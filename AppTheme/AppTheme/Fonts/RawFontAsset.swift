//
//  RawFontAsset.swift
//  AppTheme
//
//  Created by Sparkcode on 4/27/21.
//

import UIKit

enum RawFontAsset: String, CaseIterable {
    case robotoBold = "Roboto-Bold"
    case robotoRegular = "Roboto-Regular"
    case codaCaptionExtraBold = "CodaCaption-ExtraBold"
}

extension RawFontAsset {
    
    var fileExtension: String {
        switch self {
        case .robotoRegular,
             .robotoBold,
             .codaCaptionExtraBold:
            return "ttf"
        }
    }
    
    func load(size: CGFloat) -> UIFont? {
        return UIFont(name: self.rawValue, size: size)
    }
}
