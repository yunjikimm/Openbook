//
//  SubjectsRepository.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

protocol SubjectsRepository {
    func fetchSubjectList() async -> [Subject]
}
