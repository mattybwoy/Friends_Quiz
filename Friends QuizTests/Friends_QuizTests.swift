//
//  Friends_QuizTests.swift
//  Friends QuizTests
//
//  Created by Matthew Lock on 29/06/2022.
//

import XCTest
@testable import Friends_Quiz

class Friends_QuizTests: XCTestCase {
    
    private var sut: Game!

    override func setUpWithError() throws {
        sut = Game()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testAdvanceGameStateWhenClickedIncreasesCurrentQuestionIndex() {
        sut.advanceGameState()
        XCTAssertEqual(sut.currentQuestionIndex, 1)
    }
    
    func testUserMakingGuessesAddsToTheGuessesDictionary() {
        sut.makeGuess(at: 0)
        XCTAssertEqual(sut.guesses, [sut.currentQuestion: 0])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
