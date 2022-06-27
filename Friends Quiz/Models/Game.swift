//
//  Game.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 25/06/2022.
//

import Foundation

struct Game {
    private let questions = Question.allQuestions.shuffled()
    
    private(set) var currentQuestionIndex = 0
    
    private(set) var guesses = [Question : Int]()
    
    var gameOver = false
    
    var questionCount: Int {
        questions.count
    }
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    var selectionCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, selectedIndex) in guesses {
            if selectedIndex == question.correctAnswerIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    mutating func advanceGameState() {
        let nextQuestionIndex = currentQuestionIndex + 1
        if !questions.indices.contains(nextQuestionIndex) {
            gameOver = true
        } else {
            currentQuestionIndex = nextQuestionIndex
        }
    }
    
    mutating func makeGuess(at index: Int) {
        guesses[currentQuestion] = index
    }
    
    
}
