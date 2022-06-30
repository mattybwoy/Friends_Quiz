//
//  ResultsViewModel.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 27/06/2022.
//

import Foundation

struct ResultsViewModel {
    let selectionCount: (correct: Int, incorrect: Int)
    
    var finalPercentText: String {
        "\(score)%"
    }
    
    private var score: Int {
        selectionCount.correct * 100 / (selectionCount.correct + selectionCount.incorrect)
    }
    
    var letterGrade: String {
        switch score {
        case 90...100:
            return "Amazing job! You are a true friends fan!!"
        case 70..<90:
            return "Good job! A solid performance"
        case 50..<70:
            return "Not bad, could do with rewatching a few more episodes"
        default:
            return "Better luck next time"
        }
    }
    
    var gifSelector: String {
        switch score {
        case 90...100:
            return "friendsCheer"
        case 70..<90:
            return "friendsGood"
        case 50..<70:
            return "friendsNotBad"
        default:
            return "friendsSad"
        }
    }
    
}
