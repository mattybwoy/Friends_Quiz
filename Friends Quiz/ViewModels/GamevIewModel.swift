//
//  GamevIewModel.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 25/06/2022.
//

import Foundation

class GamevViewModel {
    let game = Game()
    
    var questionText: String {
        game.currentQuestion.questionText
    }
    
    var answerIndices: Range<Int> {
        game.currentQuestion.possibleAnswers.indices
    }
    
    var correctAnswerIndex: Int {
        game.currentQuestion.correctAnswerIndex
    }
    
    func answerText(for index: Int) -> String {
        game.currentQuestion.possibleAnswers[index]
    }
    
    
}
