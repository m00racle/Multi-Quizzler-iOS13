//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quizCenter = QuizCenter()
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func trueButtonPressed(_ sender: Any) {
        if quizCenter.checkAnswer(input: "True"){
            trueButton.backgroundColor = UIColor.green
        } else {trueButton.backgroundColor = UIColor.red}
        quizCenter.nextQuestion()
        addDelay(delay: 0.2)
    }
    
    @IBAction func falseButtonPressed(_ sender: Any) {
        if quizCenter.checkAnswer(input: "False") {
            falseButton.backgroundColor = UIColor.green
        } else {falseButton.backgroundColor = UIColor.red}
        quizCenter.nextQuestion()
        addDelay(delay: 0.2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        get one question from the questions array
        updateUI()
    }
    
    func addDelay(delay:Double) {
        // make somw delay to see the button interaction
        _ = Timer.scheduledTimer(withTimeInterval: delay, repeats: false, block: {_ in self.updateUI()})
    }
    
    func updateUI()  {
        let score = quizCenter.getScore()
        scoreLabel.text = "score: " + String(score)
        questionText.text = quizCenter.questions[quizCenter.questionNumber].asking
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
//        update progress
//        NOTE: use questionNumber + 1 since index is starting from 0 not 1!
        progressBar.progress = Float(quizCenter.questionNumber + 1)/Float(quizCenter.questions.count)
    }
    
    
}

