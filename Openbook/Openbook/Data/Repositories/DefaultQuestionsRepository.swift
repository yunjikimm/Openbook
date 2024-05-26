//
//  DefaultQuestionsRepository.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

struct DefaultQuestionsRepository: QuestionsRepository {
    private let dataSource = FirebaseDataSource()
    
    func fetchQuestionList(documentId: String) async -> [Question] {
        return await dataSource.getQuestionList(documentId: documentId)
    }
}
