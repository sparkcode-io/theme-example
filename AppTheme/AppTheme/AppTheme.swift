//
//  AppTheme.swift
//  AppTheme
//
//  Created by Sparkcode on 4/26/21.
//

import UIKit

//public enum FontStyle {
//    case title
//}

//protocol AppTheme {
//    func font(
//        _ style: FontStyle,
//        contentSize: ContentSizeCategory,
//        prefersBoldText: Bool
//    ) -> Font
//
//    func color(
//        _ style: ColorStyle,
//        isDarkMode: Bool,
//        prefersHighContrast: Bool
//    ) -> Color
//}

public protocol ThemeProvider {
    func adaptiveColor(
        _ style: ColorStyle,
        isDarkMode: Bool,
        prefersHighContrast: Bool
    ) -> UIColor
    
    func adaptiveFont(
        _ style: FontStyle,
        contentSize: UIContentSizeCategory,
        prefersBoldText: Bool
    ) -> UIFont
}

let bundle = Bundle(for: AppTheme.self)

public class AppTheme: ThemeProvider {
    
    public init() {
        UIFont.loadFontsIfNeeded()
    }
    
    public func adaptiveColor(
        _ style: ColorStyle,
        isDarkMode: Bool,
        prefersHighContrast: Bool
    ) -> UIColor {
        return style.load()!
    }
    
    public func adaptiveFont(
        _ style: FontStyle,
        contentSize: UIContentSizeCategory,
        prefersBoldText: Bool
    ) -> UIFont {
        return ScaledFont.load(
            style,
            contentSize: contentSize,
            prefersBoldText: prefersBoldText
        )
    }
}

// MARK: SwiftUI

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
public extension ThemeProvider {
    func adaptiveColor(
        _ style: ColorStyle,
        isDarkMode: Bool,
        prefersHighContrast: Bool
    ) -> Color {
        return Color(
            self.adaptiveColor(
                style,
                isDarkMode: isDarkMode,
                prefersHighContrast: prefersHighContrast
            )
        )
    }
    
    func adaptiveFont(
        _ style: FontStyle,
        contentSize: ContentSizeCategory,
        prefersBoldText: Bool
    ) -> Font {
        let convertedSize = contentSize.toUIKIt()
        return Font(
            self.adaptiveFont(
                style,
                contentSize: convertedSize,
                prefersBoldText: prefersBoldText
            )
        )
    }
}
#endif
