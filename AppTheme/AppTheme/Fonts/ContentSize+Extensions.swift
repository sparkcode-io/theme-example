//
//  ContentSize+Extensions.swift
//  AppTheme
//
//  Created by Sparkcode on 4/27/21.
//

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
extension ContentSizeCategory {
    func toUIKIt() -> UIContentSizeCategory {
        switch self {
        case .extraSmall:
            return .extraSmall
        case .small:
            return .small
        case .medium:
            return .medium
        case .large:
            return .large
        case .extraLarge:
            return .extraLarge
        case .extraExtraLarge:
            return .extraExtraLarge
        case .extraExtraExtraLarge:
            return .extraExtraExtraLarge
        case .accessibilityMedium:
            return .accessibilityMedium
        case .accessibilityLarge:
            return .accessibilityLarge
        case .accessibilityExtraLarge:
            return .accessibilityExtraLarge
        case .accessibilityExtraExtraLarge:
            return .accessibilityExtraExtraLarge
        case .accessibilityExtraExtraExtraLarge:
            return .accessibilityExtraExtraExtraLarge
        @unknown default:
            return .unspecified
        }
    }
}

#endif
