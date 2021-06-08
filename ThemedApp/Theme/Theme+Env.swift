//
//  Theme+Env.swift
//  ThemedApp
//
//  Created by Sparkcode on 4/26/21.
//

import SwiftUI
import AppTheme

struct ThemeKey: EnvironmentKey {
    static var defaultValue: ThemeProvider = appTheme
}

extension EnvironmentValues {
    var theme: ThemeProvider {
        get { return self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}
