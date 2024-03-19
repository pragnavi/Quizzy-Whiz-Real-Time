//
//  TriviaService.swift
//  Trivia
//
//  Created by Pragnavi Ravuluri Sai Durga on 3/18/24.
//

import Foundation

struct APIResponse: Decodable {
    let results: [Question]
}

struct Question: Decodable {
    let category: String
    let type: String
    let difficulty: String
    let question: String
    let correctAnswer: String
    let incorrectAnswers: [String]
}

class TriviaService {
    static let urlString = "https://opentdb.com/api.php?amount=10"

    static func fetchTriviaQuestions(completion: @escaping ([TriviaQuestion]) -> Void) {
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else { return }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let decodedData = try decoder.decode(APIResponse.self, from: data)
                let questions = decodedData.results.map { apiQuestion -> TriviaQuestion in
                    let questionType = apiQuestion.type == "boolean" ? TriviaQuestion.QuestionType.trueOrFalse : TriviaQuestion.QuestionType.multipleChoice
                    return TriviaQuestion(
                            category: apiQuestion.category.decodingHTMLEntities(),
                            question: apiQuestion.question.decodingHTMLEntities(),
                            correctAnswer: apiQuestion.correctAnswer.decodingHTMLEntities(),
                            incorrectAnswers: apiQuestion.incorrectAnswers.map { $0.decodingHTMLEntities() },
                            type: questionType // Set the question type here
                        )
                }
                completion(questions)
            } catch {
                print("Error decoding data: \(error)")
                completion([])
            }
        }
        
        task.resume()
    }
}
