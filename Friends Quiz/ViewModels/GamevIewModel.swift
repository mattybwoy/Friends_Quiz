//
//  GamevIewModel.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 25/06/2022.
//

import SwiftUI

class GameViewModel: ObservableObject {
    @Published var game = Game()
    
    var questionText: String {
        game.currentQuestion.questionText
    }
    
    var answerIndices: Range<Int> {
        game.currentQuestion.possibleAnswers.indices
    }
    
    var correctAnswerIndex: Int {
        game.currentQuestion.correctAnswerIndex
    }
    
    var progressText: String {
        "Question \(game.currentQuestionIndex + 1) / \(game.questionCount)"
    }
    
    var guessMade: Bool {
        game.guesses[game.currentQuestion] != nil
    }
    
    func answerText(for index: Int) -> String {
        game.currentQuestion.possibleAnswers[index]
    }
    
    func advanceGameState() {
        game.advanceGameState()
    }
    
    func makeGuessForCurrentQuestion(at index: Int) {
        game.makeGuess(at: index)
    }
    
    func buttonColor(at buttonIndex: Int) -> Color {
        guard let userSelection = game.guesses[game.currentQuestion], userSelection == buttonIndex else {
            return .yellow
        }
        if userSelection == correctAnswerIndex {
            return .green
        } else {
            return .red
        }
    }
    
    
}
