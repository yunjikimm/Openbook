//
//  QuestionsRepository.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

protocol QuestionsRepository {
    func fetchQuestionList(documentId: String) async -> [Question]
}
