//
//  OpenbookWidget.swift
//  OpenbookWidget
//
//  Created by yunjikim on 5/30/24.
//

import WidgetKit
import SwiftUI
import FirebaseFirestore

struct Provider: AppIntentTimelineProvider {
    let fetchRandomQuestionUseCase: FetchRandomQuestionUseCase
    
    init() {
        self.fetchRandomQuestionUseCase = FetchRandomQuestionUseCase()
    }
    
    // 위젯이 데이터 받기 전 기본적으로 보여주어야 하는 화면 설정
    func placeholder(in context: Context) -> QuestionEntry {
        QuestionEntry(date: Date(), question: Question(question: "no data", answers: []))
    }

    // 위젯 설정 시 미리보기 화면 설정
    func snapshot(for configuration: ConfigurationAppIntent, in context: Context) async -> QuestionEntry {
        QuestionEntry(date: Date(), question: Question(question: "Optional이란 무엇인가요?", answers: []))
    }
    
    // 데이터 업데이트 설정
    func timeline(for configuration: ConfigurationAppIntent, in context: Context) async -> Timeline<QuestionEntry> {
        var entries: [QuestionEntry] = []
        
        let currentDate = Date()
        var entryDate: Date
        
        for hourOffset in 0 ..< 5 {
            if configuration.RefreshTimeInterval {
                entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            } else {
                entryDate = Calendar.current.date(byAdding: .day, value: hourOffset, to: currentDate)!
            }
            
            let fetchRandomQuestion = await self.fetchRandomQuestionUseCase.execute()
            
            let entry = QuestionEntry(date: entryDate, question: fetchRandomQuestion)
            entries.append(entry)
        }
        
        return Timeline(entries: entries, policy: .atEnd)
    }
}

struct QuestionEntry: TimelineEntry {
    let date: Date
    let question: Question
}

struct OpenbookWidgetEntryView : View {
    var entry: Provider.Entry
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Spacer()
            
            VStack(alignment: .leading, spacing: 0) {
                Text(entry.question.question)
                    .fontWeight(.bold)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 35)
                        .fill(.main)
                        .frame(width: 20, height: 20)
                    
                    RoundedRectangle(cornerRadius: 35)
                        .fill(.point)
                        .frame(width: 13, height: 13)
                }
                
                Text("랜덤 질문")
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background {
                        RoundedRectangle(cornerRadius: 35)
                            .fill(Color(uiColor: .systemGray4))
                            .opacity(0.5)
                    }
            }
        }
    }
}

struct OpenbookWidget: Widget {
    let kind: String = "OpenbookWidget"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            OpenbookWidgetEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
        .configurationDisplayName("랜덤 질문")
        .description("홈 화면에서 랜덤으로 질문을 받아보세요.")
        .supportedFamilies([.systemSmall])
    }
}

#Preview(as: .systemSmall) {
    OpenbookWidget()
} timeline: {
    QuestionEntry(date: Date(), question: Question(question: "의존성 주입이 무엇인가요?", answers: []))
}
