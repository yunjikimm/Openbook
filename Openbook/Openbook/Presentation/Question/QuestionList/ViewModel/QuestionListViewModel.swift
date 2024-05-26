//
//  QuestionListViewModel.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

@MainActor
final class QuestionListViewModel: ObservableObject {
    @Published var questions: [Question] = []
    
    private let fetchQuestionUseCase: FetchQuestionsUseCase
    
    init() {
        self.fetchQuestionUseCase = FetchQuestionsUseCase()
    }
    
    func fetchQuestionList(documentId: String) async {
        let fetchQuestions = await self.fetchQuestionUseCase.execute(documentId: documentId)
        self.questions = fetchQuestions
    }
}
