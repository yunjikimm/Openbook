//
//  SubjectListViewModel.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

@MainActor
final class SubjectListViewModel: ObservableObject {
    @Published var subjects: [Subject] = []
    
    private let fetchSubjectsUseCase: FetchSubjectsUseCase
    
    init() {
        self.fetchSubjectsUseCase = FetchSubjectsUseCase()
    }
    
    func fetchSubjectList() async {
        let fetchSubjects = await self.fetchSubjectsUseCase.execute()
        self.subjects = fetchSubjects
    }
}
