//
//  Question.swift
//  QuestionsTest
//
//  Created by okan bayram on 6.02.2025.
//

import Foundation

struct Questions {
    var qNumber = 0
    var score = 0
    var correctAnswer: String = ""
    var choosenAnswer: String = ""
    
    let quiz = [
        Problem(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Problem(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Problem(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Problem(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Problem(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Problem(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Problem(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Problem(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Problem(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Problem(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    mutating func checkAnswer() {
        if choosenAnswer == quiz[qNumber].correctAnswer {
            score += 1
        }
        
        if qNumber + 1 < quiz.count {
            qNumber += 1
        } else {
            qNumber = 0
            score = 0
        }
    }
    
    func getQuestion() -> String {
        return quiz[qNumber].q
    }
    func getAnswerA() -> String {
        return quiz[qNumber].a[0]
    }
    func getAnswerB() -> String {
        return quiz[qNumber].a[1]
    }
    func getAnswerC() -> String {
        return quiz[qNumber].a[2]
    }
    func getScore() -> Int {
        return score
    }
    
    mutating func setSelectedAnswer(_ selected: String) {
        if selected == "Select A" {
            self.choosenAnswer = quiz[qNumber].a[0]
        } else if selected == "Select B" {
            self.choosenAnswer = quiz[qNumber].a[1]
        } else if selected == "Select C" {
            self.choosenAnswer = quiz[qNumber].a[2]
        }
        print(choosenAnswer)
    }
}
