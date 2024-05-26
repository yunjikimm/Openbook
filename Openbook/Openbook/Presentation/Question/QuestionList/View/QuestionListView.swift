//
//  QuestionListView.swift
//  Openbook
//
//  Created by yunjikim on 5/18/24.
//

import SwiftUI

struct QuestionListView: View {
    @StateObject var questionViewModel: QuestionListViewModel
    
    @State private var isShowingSheet: Bool = false
    @State private var sheetQuestion: Question = Question(question: "", answers: [])
    
    var subject: Subject
    
    var body: some View {
        List {
            ForEach(questionViewModel.questions, id: \.self.id) { question in
                HStack {
                    Text(question.question)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .onTapGesture {
                    sheetQuestion = question
                    isShowingSheet = true
                }
            }
        }
        .navigationTitle(subject.subject)
        .navigationBarTitleDisplayMode(.large)
        .fullScreenCover(isPresented: $isShowingSheet) {
            QuestionDetailView(question: $sheetQuestion)
        }
        .task {
            guard let id = subject.id else { return }
            await questionViewModel.fetchQuestionList(documentId: id)
        }
    }
}

#Preview {
    QuestionListView(questionViewModel: QuestionListViewModel(), subject: Subject(id: "iOS", subject: "iOS"))
}
