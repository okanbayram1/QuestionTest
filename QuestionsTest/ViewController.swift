//
//  ViewController.swift
//  QuestionsTest
//
//  Created by okan bayram on 6.02.2025.
//  buttonClicked ve sonrası:
//  1.    Kullanıcı butona bastığında, buttonClicked fonksiyonu çalışıyor.
//  2.    Basılan butonun başlığı selectedButton değişkenine atanıyor.
//  3.    setSelectedAnswer fonksiyonu çağrılarak selectedButton içeriği kontrol ediliyor.
//  4.    Seçilen şıkkın içeriği choosenAnswer değişkenine atanıyor.


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
        guard let selectedButton = sender.titleLabel?.text else { return }
        
        questions.setSelectedAnswer(selectedButton)
        questions.checkAnswer()
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = questions.getQuestion()
        aLabel.text = "A: \(questions.getAnswerA())"
        bLabel.text = "B: \(questions.getAnswerB())"
        cLabel.text = "C: \(questions.getAnswerC())"
        scoreLabel.text = "Score: \(questions.getScore())"
    }
}
