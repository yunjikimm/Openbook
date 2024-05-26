//
//  DefaultSubjectsRepository.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

struct DefaultSubjectsRepository: SubjectsRepository {
    private let dataSource = FirebaseDataSource()
    
    func fetchSubjectList() async -> [Subject] {
        return await dataSource.getSubjectList()
    }
}
