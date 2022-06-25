//
//  Game.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 25/06/2022.
//

import Foundation

struct Game {
    private let questions = Question.allQuestions.shuffled()
    
    private var currentQuestionIndex = 0
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    mutating func advanceGameState() {
        let nextQuestionIndex = currentQuestionIndex + 1
        currentQuestionIndex = nextQuestionIndex
    }
}
