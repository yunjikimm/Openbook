//
//  RandomQuestionViewModel.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import Foundation

@MainActor
final class RandomQuestionViewModel: ObservableObject {
    @Published var randomQuestion: Question
    
    private let fetchRandomQuestionUseCase: FetchRandomQuestionUseCase
    
    init() {
        self.randomQuestion = Question(question: "no data", answers: [])
        self.fetchRandomQuestionUseCase = FetchRandomQuestionUseCase()
    }
    
    func fetchRandomQuestion() async {
        let fetchRandomQuestion = await self.fetchRandomQuestionUseCase.execute()
        self.randomQuestion = fetchRandomQuestion
    }
}
