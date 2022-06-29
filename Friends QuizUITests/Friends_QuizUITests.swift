//
//  Friends_QuizUITests.swift
//  Friends QuizUITests
//
//  Created by Matthew Lock on 29/06/2022.
//

import XCTest
@testable import Friends_Quiz

class Friends_QuizUITests: XCTestCase {
    
    private var app: XCUIApplication!
    
    override func setUpWithError() throws {
        app = XCUIApplication()
        app.launch()
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        app = nil
    }

    func testStartScreenDisplaysBeginButton() {
        let beginButton = app.buttons["Begin!"]
        XCTAssertTrue(beginButton.exists)
    }
    
    func testBeginButtonStartsTheQuiz() {
        let beginButton = app.buttons["Begin!"]
        beginButton.tap()
        let questionCountText = app.staticTexts["Question 1 / 10"]
        XCTAssertTrue(questionCountText.exists)
                
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
