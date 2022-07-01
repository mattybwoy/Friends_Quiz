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
    private var mockSut: MockGame!

    override func setUpWithError() throws {
        sut = Game()
    }

    override func tearDownWithError() throws {
        sut = nil
        mockSut = nil
    }

    func testAdvanceGameStateWhenClickedIncreasesCurrentQuestionIndex() {
        sut.advanceGameState()
        XCTAssertEqual(sut.currentQuestionIndex, 1)
    }
    
    func testUserMakingGuessesAddsToTheGuessesDictionary() {
        sut.makeGuess(at: 0)
        XCTAssertEqual(sut.guesses, [sut.currentQuestion: 0])
    }
    
    func testUserMakingCorrectGuessesIncreasesCorrectSelectionCount() {
        mockSut = MockGame()
        mockSut.makeGuess(at: 2)
        XCTAssertEqual(mockSut.selectionCount.correct, 1)
    }
    
    func testUserMakingIncorrectGuessesIncreasesIncorrectSelectionCount() {
        mockSut = MockGame()
        mockSut.makeGuess(at: 1)
        XCTAssertEqual(mockSut.selectionCount.incorrect, 1)
    }
    
    func testGameOverIsTrueWhenQuizIsOver() {
        mockSut = MockGame()
        mockSut.currentQuestionIndex = 9
        mockSut.advanceGameState()
        XCTAssertEqual(mockSut.gameOver, true)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
