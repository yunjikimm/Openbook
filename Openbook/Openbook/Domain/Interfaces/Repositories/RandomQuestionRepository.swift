//
//  RandomQuestionRepository.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

protocol RandomQuestionRepository {
    func fetchRandomQuestion() async -> Question
}
