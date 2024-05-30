//
//  SubjectView.swift
//  Openbook
//
//  Created by yunjikim on 5/15/24.
//

import SwiftUI

struct SubjectView: View {
    @StateObject var viewModel: SubjectListViewModel
    
    private let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(uiColor: UIColor.secondarySystemBackground)
                    .ignoresSafeArea(edges: .all)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        LazyVGrid(columns: columns) {
                            ForEach(viewModel.subjects, id: \.self.id) { subject in
                                NavigationLink {
                                    QuestionListView(questionViewModel: QuestionListViewModel(), subject: subject)
                                } label: {
                                    Text(subject.subject)
                                        .foregroundStyle(Color.primary)
                                        .font(.system(size: 22, weight: .bold))
                                        .frame(maxWidth: .infinity, minHeight: 150)
                                        .background {
                                            RoundedRectangle(cornerRadius: 35)
                                                .fill(.main)
                                        }
                                }
                            }
                        }
                        
                        Spacer()
                    }
                }
                .padding([.horizontal, .top])
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("학습")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                }
            }
        }
        .task {
            await viewModel.fetchSubjectList()
        }
    }
}

#Preview {
    SubjectView(viewModel: SubjectListViewModel())
}
