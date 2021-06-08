//
//  ColorStyleTests.swift
//  AppThemeTests
//
//  Created by Sparkcode on 4/26/21.
//

import XCTest
@testable import AppTheme

class ColorStyleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testColorsLoad() throws {
        ColorStyle.allCases.forEach({ (style) in
            let color = style.load()
            XCTAssertNotNil(color, "Unable to load color: \(style.rawValue)")
        })
    }

}
