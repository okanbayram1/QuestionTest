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
    var controlNo = 0
    
    var vController = ViewController()
    
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
        if choosenAnswer == quiz[controlNo].correctAnswer {
            score += 1
        }
        if qNumber + 1 < quiz.count {
            qNumber += 1
        } else {
            qNumber = 0
            score = 0
            controlNo = 0
        }
        print(choosenAnswer)
//        print(quiz[qNumber].correctAnswer)
        controlNo += 1
    }
    
    mutating func getQuestion() -> String {
        return quiz[qNumber].q
    }
    mutating func getAnswerA() -> String {
        return quiz[qNumber].a[0]
    }
    mutating func getAnswerB() -> String {
        return quiz[qNumber].a[1]
    }
    mutating func getAnswerC() -> String {
        return quiz[qNumber].a[2]
    }
    func getScore() -> Int {
        return score
    }
    mutating func abc() {
        let selected = vController.selectedButton
        if selected == "Select A" {
            self.choosenAnswer = quiz[qNumber].a[0]
        } else if selected == "Select B" {
            self.choosenAnswer = quiz[qNumber].a[1]
        } else {
            self.choosenAnswer = quiz[qNumber].a[2]
        }
        print(choosenAnswer)
    }
}
