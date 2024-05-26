//
//  RandomQuestionView.swift
//  Openbook
//
//  Created by yunjikim on 5/25/24.
//

import SwiftUI

struct RandomQuestionView: View {
    @StateObject var randomQuestionViewModel: RandomQuestionViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("랜덤 질문")
                .padding(.top, 25)
                .font(.system(size: 16, weight: .bold))
            
            Text(randomQuestionViewModel.randomQuestion.question)
                .foregroundStyle(Color.primary)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 35)
                .background {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(uiColor: UIColor.systemBackground))
                }
        }
        .task {
            await self.randomQuestionViewModel.fetchRandomQuestion()
        }
    }
}

#Preview {
    RandomQuestionView(randomQuestionViewModel: RandomQuestionViewModel())
}
