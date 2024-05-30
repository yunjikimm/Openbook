//
//  QuestionDetailView.swift
//  Openbook
//
//  Created by yunjikim on 5/18/24.
//

import SwiftUI

struct QuestionDetailView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var question: Question
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(uiColor: UIColor.secondarySystemBackground)
                    .ignoresSafeArea(edges: .all)
                
                ScrollView(.vertical) {
                    VStack(alignment: .leading) {
                        Text(question.question)
                            .font(.headline)
                            .padding(.vertical)
                        
                        VStack {
                            ForEach(question.answers, id: \.self) { answer in
                                HStack {
                                    Text(answer)
                                    Spacer()
                                }
                                .frame(maxWidth: .infinity)
                                .padding(.leading)
                                .padding(.bottom, 20)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.top, 20)
                        .background {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color(uiColor: UIColor.systemBackground))
                        }
                        
                        Spacer()
                    }
                }
                .padding([.horizontal], 16)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                                .foregroundStyle(.primary)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    QuestionDetailView(question: .constant(Question(
        question: "질문",
        answers: ["답변1", "답변2"]))
    )
}
