//
//  ViewControllerTests.swift
//  Testing FundamentalsUITests
//
//  Created by Sparkcode on 4/21/21.
//

import XCTest
@testable import Testing_Fundamentals

class ViewControllerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // can't access app code in UI Tests because they use an app runner
        // would need to do it with arguments passed to the app launch
        
//        let app = XCUIApplication()
//        let bundle = Bundle(identifier: "sparkcode.Testing-Fundamentals")
//        let story = UIStoryboard(name: "Main", bundle: bundle)
//        let vc = story.instantiateViewController(withIdentifier: "ViewController")
//        vc.view.backgroundColor = .orange
//        UIApplication.shared.windows.first?.rootViewController = vc
    }

}
