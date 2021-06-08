//
//  ThemedAppApp.swift
//  ThemedApp
//
//  Created by Sparkcode on 4/23/21.
//

import SwiftUI

@main
struct ThemedAppApp: App {
    var body: some Scene {
        WindowGroup {
            // SignInView is SwiftUI
            SignInView()
            // RegisterView is in UIKit
//            RegisterView()
            .environment(\.theme, appTheme)
        }
    }
}
