//
//  Question.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 23/06/2022.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static let allQuestions: [Question] = [
        Question(questionText: "How many sisters does Joey have?",
                 possibleAnswers: ["5", "6", "7", "8"],
                correctAnswerIndex: 2),
        Question(questionText: "What is the name of Joey’s character in the commercial for opening milk cartons?",
                 possibleAnswers: ["Kevin", "Tommy", "Ken", "Joseph"],
                correctAnswerIndex: 0),
        Question(questionText: "How many pages were in the letter Rachel wrote to Ross?",
                 possibleAnswers: ["14", "16", "18", "20"],
                correctAnswerIndex: 2),
        Question(questionText: "What was the name of the ice-dancer Phoebe was married to?",
                 possibleAnswers: ["Duncan", "Mike", "Gary", "Vikram"],
                 correctAnswerIndex: 0),
        Question(questionText: "What was the name of the neighbour’s dog who’d chase Phoebe as a child?",
                 possibleAnswers: ["Clunkers", "Satan", "Marcel", "Lapoo"],
                 correctAnswerIndex: 1),
        Question(questionText: "How much did Pete Becker tip her at the diner Monica worked at?",
                 possibleAnswers: ["$200", "$2000", "$20,000", "$200,000"],
                 correctAnswerIndex: 2),
        Question(questionText: "What is Chandler’s middle name?",
                 possibleAnswers: ["Martin", "Nora", "Charles", "Muriel"],
                 correctAnswerIndex: 3),
        Question(questionText: "Which of Joey’s sisters does Chandler kiss?",
                 possibleAnswers: ["Mary Therese", "Mary Angela", "Dina", "Cookie"],
                 correctAnswerIndex: 1),
        Question(questionText: "What is Russ's job?",
                 possibleAnswers: ["Psychologist", "Orthodontist", "Paleontolgist", "Periodontist"],
                 correctAnswerIndex: 3),
        Question(questionText: "Where does Ross become a college professor?",
                 possibleAnswers: ["Columbia University", "NYU", "Brooklyn College", "Monroe College"],
                 correctAnswerIndex: 1)
    ]
}
