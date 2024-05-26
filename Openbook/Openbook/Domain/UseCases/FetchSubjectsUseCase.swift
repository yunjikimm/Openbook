//
//  FetchSubjectsUseCase.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

protocol SubjectsUseCase {
    func execute() async -> [Subject]
}

struct FetchSubjectsUseCase: SubjectsUseCase {
    private let repository: SubjectsRepository
    
    init() {
        self.repository = DefaultSubjectsRepository()
    }
    
    func execute() async -> [Subject] {
        return await repository.fetchSubjectList()
    }
}
