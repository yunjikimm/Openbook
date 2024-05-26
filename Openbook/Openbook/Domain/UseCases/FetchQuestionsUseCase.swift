//
//  FetchQuestionsUseCase.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

protocol QuestionsUseCase {
    func execute(documentId: String) async -> [Question]
}

struct FetchQuestionsUseCase: QuestionsUseCase {
    private let repository: QuestionsRepository
    
    init() {
        self.repository = DefaultQuestionsRepository()
    }
    
    func execute(documentId: String) async -> [Question] {
        return await repository.fetchQuestionList(documentId: documentId)
    }
}
