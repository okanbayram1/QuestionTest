//
//  ViewController.swift
//  QuestionsTest
//
//  Created by okan bayram on 6.02.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    
    var questions = Questions()
    var selectedButton = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        let selectedButton = sender.titleLabel?.text
        print(selectedButton ?? "Error Button Name")
        updateUI()
        questions.checkAnswer()
        questions.abc()
    }
    func updateUI() {
        questionLabel.text = questions.getQuestion()
        aLabel.text = "A: \(questions.getAnswerA())"
        bLabel.text = "B: \(questions.getAnswerB())"
        cLabel.text = "C: \(questions.getAnswerC())"
        scoreLabel.text = "Score: \(questions.getScore())"
        
    }
    
}

