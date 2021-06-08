//
//  ColorStyle.swift
//  AppTheme
//
//  Created by Sparkcode on 4/26/21.
//

import UIKit

public enum ColorStyle: String, CaseIterable {
    case backgroundPrimary
    case textPrimary
    case textSecondary
    case textPlaceholder
    case actionPrimary
    case backgroundSecondary
}

extension ColorStyle {
    func load() -> UIColor? {
        if #available(iOS 13.0, *) {
            return UIColor(
                named: self.rawValue,
                in: bundle,
                compatibleWith: .current
            )
        } else {
            return UIColor(
                named: self.rawValue,
                in: bundle,
                compatibleWith: nil
            )
        }
    }
}
