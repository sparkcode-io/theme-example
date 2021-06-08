//
//  UIFont+Extensions.swift
//  AppTheme
//
//  Created by Sparkcode on 4/27/21.
//

import UIKit

extension UIFont {
    
    static var hasLoadedFonts = false
    
    static func registerFont(
        withName name: String,
        extension fileExtension: String,
        in bundle: Bundle
    ) {
        let pathForResourceString = bundle.path(forResource: name, ofType: fileExtension)
        let fontData = NSData(contentsOfFile: pathForResourceString!)
        let dataProvider = CGDataProvider(data: fontData!)
        let fontRef = CGFont(dataProvider!)
        var errorRef: Unmanaged<CFError>? = nil

        if (CTFontManagerRegisterGraphicsFont(fontRef!, &errorRef) == false) {
            print("Error registering font")
        }
    }
    
    static func loadFontsIfNeeded() {
        guard hasLoadedFonts == false else {
            return
        }
        hasLoadedFonts = true
        RawFontAsset.allCases.forEach { (asset) in
            registerFont(
                withName: asset.rawValue,
                extension: asset.fileExtension,
                in: bundle
            )
        }
    }
}
