//
//  RandomQuestionView.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import SwiftUI

struct RandomQuestionView: View {
    @StateObject var randomQuestionViewModel: RandomQuestionViewModel
    @State private var isShowingSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(uiColor: UIColor.secondarySystemBackground)
                    .ignoresSafeArea(edges: .all)
                
                VStack {
                    VStack {
                        Text(randomQuestionViewModel.randomQuestion.question)
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(height: 150)
                        
                        Divider()
                        
                        Text(randomQuestionViewModel.randomQuestion.answers.randomElement() ?? "")
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(maxHeight: .infinity)
                        
                        Spacer()
                    }
                    .frame(maxHeight: .infinity)
                    .padding()
                    .background(Color(uiColor: UIColor.systemBackground), in: RoundedRectangle(cornerRadius: 25))
                    
                    HStack {
                        Button {
                            Task {
                                await self.randomQuestionViewModel.fetchRandomQuestion()
                            }
                        } label: {
                            Image(systemName: "goforward")
                                .padding()
                                .background(Color(uiColor: UIColor.systemBackground), in: RoundedRectangle(cornerRadius: 30))
                        }
                        
                        Spacer()
                        
                        Button {
                            isShowingSheet = true
                        } label: {
                            Text("자세히 보기")
                                .padding(.horizontal, 28)
                                .padding(.vertical)
                                .background(.main, in: RoundedRectangle(cornerRadius: 30))
                                .foregroundStyle(.black)
                        }
                    }
                }
                .padding()
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("OPENBOOK")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                }
            }
        }
        .fullScreenCover(isPresented: $isShowingSheet) {
            QuestionDetailView(question: $randomQuestionViewModel.randomQuestion)
        }
        .task {
            await self.randomQuestionViewModel.fetchRandomQuestion()
        }
    }
}

#Preview {
    RandomQuestionView(randomQuestionViewModel: RandomQuestionViewModel())
}
