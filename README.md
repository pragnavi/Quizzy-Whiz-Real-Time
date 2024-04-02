# Quizzy Whiz - Enhanced Version with RealTime Data

**Quizzy Whiz** is an app that brings the thrill of trivia right to your fingertips! Engage in a brain-tingling journey across various domains including Entertainment, Science, General Knowledge, Mythology and many more. With each tap, uncover questions designed to challenge your knowledge and provoke curiosity. Whether you're a trivia novice or a seasoned quiz master, Quizzy Whiz offers a unique platform to test your wits, and learn interesting facts. Dive into the world of Quizzy Whiz, where every question is an opportunity to learn something new and celebrate the joy of discovery.

## Features

The following features are implemented:

- [x] User can view and answer at least 5 trivia questions.
- [x] App retrieves question data from the Open Trivia Database API.
- [x] Fetch a different set of questions if the user indicates they would like to reset the game.
- [x] Users can see score after submitting all questions.
- [x] True or False questions only have two options.

## Getting Started

To embark on your trivia journey with Quizzy Whiz:
1. Clone the repository to your local machine.
2. Open the `Trivia.xcodeproj` file with Xcode.
3. Compile and run the app on your iOS device or emulator.

## Video Walkthrough

<div>
    <a href="https://www.loom.com/share/4b8cbdc38cb34adc8e871aff3a547ed3">
    </a>
    <a href="https://www.loom.com/share/4b8cbdc38cb34adc8e871aff3a547ed3">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/4b8cbdc38cb34adc8e871aff3a547ed3-with-play.gif">
    </a>
  </div>

## Notes

Describe any challenges encountered while building the app.

While building the Trivia App, several challenges were encountered that required thoughtful solutions and a deeper understanding of iOS development principles. First, handling the asynchronous nature of network requests to fetch trivia questions presented a significant challenge. Dealing with the decoding of HTML entities in the trivia questions and answers. Since the Open Trivia Database API returned questions with special characters encoded as HTML entities (e.g., &quot; for quotes), finding an efficient way to decode these entities for display in the UI without built-in Swift support required a custom solution.

Implementing a dynamic UI that could adjust based on the type of question (multiple-choice vs. true/false) also proved challenging. It required logic to show or hide answer buttons based on the question type and to dynamically set button titles for the answers. This necessitated a deeper understanding of UI elements and Auto Layout to ensure a seamless user experience.

## License

    Copyright [2024] [Pragnavi Ravuluri Sai Durga]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
