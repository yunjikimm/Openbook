//
//  OpenbookWidgetBundle.swift
//  OpenbookWidget
//
//  Created by yunjikim on 5/30/24.
//

import WidgetKit
import SwiftUI
import FirebaseCore

@main
struct OpenbookWidgetBundle: WidgetBundle {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Widget {
        OpenbookWidget()
    }
}
