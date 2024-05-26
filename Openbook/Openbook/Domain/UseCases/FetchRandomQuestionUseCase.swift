//
//  FetchRandomQuestionUseCase.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

protocol RandomQuestionUseCase {
    func execute() async -> Question
}

struct FetchRandomQuestionUseCase: RandomQuestionUseCase {
    private let repository: RandomQuestionRepository
    
    init() {
        self.repository = DefaultRandomQuestionRepository()
    }
    
    func execute() async -> Question {
        return await repository.fetchRandomQuestion()
    }
}
