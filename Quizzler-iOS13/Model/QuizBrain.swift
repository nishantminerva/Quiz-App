//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(que: "A slug's blood is green.", ans: "True"),
        Question(que: "Approximately one quarter of human bones are in the feet.", ans: "True"),
        Question(que: "The total surface area of two human lungs is approximately 70 square metres.", ans: "True"),
        Question(que: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", ans: "True"),
        Question(que: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(que: "It is illegal to pee in the Ocean in Portugal.", ans: "True"),
        Question(que: "You can lead a cow down stairs but not up stairs.", ans: "False"),
        Question(que: "Google was originally called 'Backrub'.", ans: "True"),
        Question(que: "Buzz Aldrin's mother's maiden name was 'Moon'.", ans: "True"),
        Question(que: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", ans: "False"),
        Question(que: "No piece of square dry paper can be folded in half more than 7 times.", ans: "False"),
        Question(que: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", ans: "True")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

