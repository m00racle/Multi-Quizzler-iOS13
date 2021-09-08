//
//  Quizzler_iOS13UI_Buttons_Interaction_Tests.swift
//  Quizzler-iOS13UI-Buttons-Interaction-Tests
//
//  Created by Yanuar Heru on 30/07/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import XCTest

class Quizzler_iOS13UI_Buttons_Interaction_Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    func test_true_button_increment_to_next_question() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        let trueButton = app.buttons["trueButton"]
        let questionText = app.staticTexts["questionText"]
        
//        take actions
        trueButton.tap()
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual("two is larger than one", questionText.label)
    }
}
