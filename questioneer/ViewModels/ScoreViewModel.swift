//
//  ScoreViewModel.swift
//  questioneer
//
//  Created by Eugene Ned on 04.01.2022.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
