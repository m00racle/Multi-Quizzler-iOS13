//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    add the list of questions
    let questions = [
        "three minus two is one",
        "two is larger than one",
        "ten is smaller than five",
        "twenty divided by two is five",
        "zero is positive"
    ]
    
//    hard coded the questions index locator
    var questionNumber = 0
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func trueButtonPressed(_ sender: Any) {
        nextQuestion()
    }
    
    @IBAction func falseButtonPressed(_ sender: Any) {
        nextQuestion()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        get one question from the questions array
        updateUI()
    }
    
    func updateUI()  {
        questionText.text = questions[questionNumber]
    }
    
    func nextQuestion()  {
        if questionNumber <= (questions.count - 2) {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        updateUI()
    }
}

