//
//  AppIntent.swift
//  OpenbookWidget
//
//  Created by yunjikim on 5/30/24.
//

import WidgetKit
import AppIntents

struct ConfigurationAppIntent: WidgetConfigurationIntent {
    static var title: LocalizedStringResource = "랜덤 질문 받기"
    static var description = IntentDescription("랜덤 질문의 새로고침 시간 간격을 설정하세요.")

    // An example configurable parameter.
    @Parameter(title: "한 시간마다 새로고침", default: true)
    var RefreshTimeInterval: Bool
}

enum RefreshTime {
    case hour
    case day
    
    var interval: Bool {
        switch self {
        case .hour:
            return true
        case .day:
            return false
        }
    }
}
