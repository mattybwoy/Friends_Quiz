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
    
    private var gameOver = false
    
    var questionCount: Int {
        questions.count
    }
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
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
