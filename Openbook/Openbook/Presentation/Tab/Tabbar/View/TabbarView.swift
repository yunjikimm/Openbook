//
//  TabbarView.swift
//  Openbook
//
//  Created by yunjikim on 5/31/24.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            RandomQuestionView(randomQuestionViewModel: RandomQuestionViewModel())
                .tabItem {
                    Image(systemName: "questionmark.square")
                    Text("랜덤질문")
                }
            
            SubjectView(viewModel: SubjectListViewModel())
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("학습")
                }
        }
        .toolbar(.visible, for: .tabBar)
        .onAppear {
            UITabBar.appearance().backgroundColor = UIColor.secondarySystemBackground
        }
    }
}

#Preview {
    TabbarView()
}
