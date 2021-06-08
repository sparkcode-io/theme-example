//
//  RawFontAssetTests.swift
//  AppThemeTests
//
//  Created by Sparkcode on 4/27/21.
//

import XCTest
@testable import AppTheme

class RawFontAssetTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        UIFont.loadFontsIfNeeded()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFontsLoad() throws {
        RawFontAsset.allCases.forEach { (asset) in
            let font = asset.load(size: 12)
            XCTAssertNotNil(font, "Unable to load font: \(asset.rawValue)")
        }
    }

}
