//
//  Question.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 23/06/2022.
//

import Foundation

struct Question {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static let allQuestions: [Question] = [
        Question(questionText: "How many sisters does Joey have?",
                 possibleAnswers: ["5", "6", "7", "8"],
                correctAnswerIndex: 2),
        Question(questionText: "What is the name of Joey’s character in the commercial for opening milk cartons?",
                 possibleAnswers: ["Ken", "Tommy", "Kevin", "Joseph"],
                correctAnswerIndex: 2),
        Question(questionText: "How many pages were in the letter Rachel wrote to Ross?",
                 possibleAnswers: ["14", "16", "18", "20"],
                correctAnswerIndex: 2),
    ]
}
