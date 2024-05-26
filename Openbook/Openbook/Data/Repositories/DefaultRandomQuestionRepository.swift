//
//  DefaultRandomQuestionRepository.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

struct DefaultRandomQuestionRepository: RandomQuestionRepository {
    private let dataSource = FirebaseDataSource()
    
    func fetchRandomQuestion() async -> Question {
        guard let question = await dataSource.getRandomQuestionList().randomElement() else {
            return Question(question: "데이터 없음", answers: [])
        }
        return question
    }
}
