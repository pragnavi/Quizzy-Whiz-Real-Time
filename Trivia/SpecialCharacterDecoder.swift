//
//  SpecialCharacterDecoder.swift
//  Trivia
//
//  Created by Pragnavi Ravuluri Sai Durga on 3/18/24.
//

import Foundation

extension String {
    func decodingHTMLEntities() -> String {
        guard let data = self.data(using: .utf8) else { return self }
        let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
            .documentType: NSAttributedString.DocumentType.html,
            .characterEncoding: String.Encoding.utf8.rawValue
        ]
        if let decodedString = try? NSAttributedString(data: data, options: options, documentAttributes: nil).string {
            return decodedString
        } else {
            return self
        }
    }
}
