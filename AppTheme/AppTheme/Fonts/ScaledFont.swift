//
//  ScaledFont.swift
//  AppTheme
//
//  Created by Sparkcode on 4/27/21.
//

import UIKit

struct ScaledFont {
    
    static func load(
        _ style: FontStyle,
        contentSize: UIContentSizeCategory,
        prefersBoldText: Bool
    ) -> UIFont {
        switch style {
        case .title:
            return loadTitle(contentSize: contentSize, prefersBoldText: prefersBoldText)
        case .body:
            return loadBody(contentSize: contentSize, prefersBoldText: prefersBoldText)
        case .textLink:
            return loadTextLink(contentSize: contentSize, prefersBoldText: prefersBoldText)
        case .primaryButton:
            return loadPrimaryButton(contentSize: contentSize, prefersBoldText: prefersBoldText)
        }
    }
}

private extension ScaledFont {
    
    static func loadTitle(
        contentSize: UIContentSizeCategory,
        prefersBoldText: Bool
    ) -> UIFont {
        let defaultSize: CGFloat = 34
        let size: CGFloat
        switch contentSize {
        case .extraSmall:
            size = defaultSize - 3
        case .small:
            size = defaultSize - 2
        case .medium:
            size = defaultSize - 1
        case .large:
            size = defaultSize
        case .extraLarge:
            size = defaultSize + 1
        case .extraExtraLarge:
            size = defaultSize + 2
        case .extraExtraExtraLarge:
            size = defaultSize + 3
        case .accessibilityMedium:
            size = defaultSize + 7
        case .accessibilityLarge:
            size = defaultSize + 11
        case .accessibilityExtraLarge:
            size = defaultSize + 15
        case .accessibilityExtraExtraLarge:
            size = defaultSize + 19
        case .accessibilityExtraExtraExtraLarge:
            size = defaultSize + 23
        case .unspecified:
            size = defaultSize
        default:
            size = defaultSize
        }
        return RawFontAsset.codaCaptionExtraBold.load(size: size)!
    }
    
    static func loadBody(
        contentSize: UIContentSizeCategory,
        prefersBoldText: Bool
    ) -> UIFont {
        let defaultSize: CGFloat = 18
        let size: CGFloat
        switch contentSize {
        case .extraSmall:
            size = defaultSize - 3
        case .small:
            size = defaultSize - 2
        case .medium:
            size = defaultSize - 1
        case .large:
            size = defaultSize
        case .extraLarge:
            size = defaultSize + 1
        case .extraExtraLarge:
            size = defaultSize + 2
        case .extraExtraExtraLarge:
            size = defaultSize + 3
        case .accessibilityMedium:
            size = defaultSize + 7
        case .accessibilityLarge:
            size = defaultSize + 11
        case .accessibilityExtraLarge:
            size = defaultSize + 15
        case .accessibilityExtraExtraLarge:
            size = defaultSize + 19
        case .accessibilityExtraExtraExtraLarge:
            size = defaultSize + 23
        case .unspecified:
            size = defaultSize
        default:
            size = defaultSize
        }
        if prefersBoldText {
            return RawFontAsset.robotoBold.load(size: size)!
        } else {
            return RawFontAsset.robotoRegular.load(size: size)!
        }
    }
    
    static func loadTextLink(
        contentSize: UIContentSizeCategory,
        prefersBoldText: Bool
    ) -> UIFont {
        let defaultSize: CGFloat = 20
        let size: CGFloat
        switch contentSize {
        case .extraSmall:
            size = defaultSize - 3
        case .small:
            size = defaultSize - 2
        case .medium:
            size = defaultSize - 1
        case .large:
            size = defaultSize
        case .extraLarge:
            size = defaultSize + 1
        case .extraExtraLarge:
            size = defaultSize + 2
        case .extraExtraExtraLarge:
            size = defaultSize + 3
        case .accessibilityMedium:
            size = defaultSize + 7
        case .accessibilityLarge:
            size = defaultSize + 11
        case .accessibilityExtraLarge:
            size = defaultSize + 15
        case .accessibilityExtraExtraLarge:
            size = defaultSize + 19
        case .accessibilityExtraExtraExtraLarge:
            size = defaultSize + 23
        case .unspecified:
            size = defaultSize
        default:
            size = defaultSize
        }
        return RawFontAsset.robotoBold.load(size: size)!
    }
    
    static func loadPrimaryButton(
        contentSize: UIContentSizeCategory,
        prefersBoldText: Bool
    ) -> UIFont {
        let defaultSize: CGFloat = 26
        let size: CGFloat
        switch contentSize {
        case .extraSmall:
            size = defaultSize - 3
        case .small:
            size = defaultSize - 2
        case .medium:
            size = defaultSize - 1
        case .large:
            size = defaultSize
        case .extraLarge:
            size = defaultSize + 1
        case .extraExtraLarge:
            size = defaultSize + 2
        case .extraExtraExtraLarge:
            size = defaultSize + 3
        case .accessibilityMedium:
            size = defaultSize + 7
        case .accessibilityLarge:
            size = defaultSize + 11
        case .accessibilityExtraLarge:
            size = defaultSize + 15
        case .accessibilityExtraExtraLarge:
            size = defaultSize + 19
        case .accessibilityExtraExtraExtraLarge:
            size = defaultSize + 23
        case .unspecified:
            size = defaultSize
        default:
            size = defaultSize
        }
        return RawFontAsset.robotoBold.load(size: size)!
    }
}
