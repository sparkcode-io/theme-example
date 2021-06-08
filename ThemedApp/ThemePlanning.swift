//
//  ThemePlanning.swift
//  ThemedApp
//
//  Created by Sparkcode on 4/23/21.
//

import SwiftUI

/*
 
 - Fonts
    - Dynamic sizing fonts
    - Accesibility bold text for fonts
    - Custom fonts instead of the system
 
 - Colors
    - Adapt to light and dark mode
    - Accessibility high contrast
 
 */

//enum FontStyle {
//    case title
//}
//
//enum ColorStyle {
//    case backgroundPrimary
//}
//
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
//
//func example(theme: AppTheme) {
//    theme.font(.title, contentSize: .accessibilityMedium, prefersBoldText: true)
//    // theme.font(.title)
//    theme.color(.backgroundPrimary, isDarkMode: false, prefersHighContrast: false)
//    // theme.color(.backgroundPrimary)
//}


/*
 
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
 
 */
