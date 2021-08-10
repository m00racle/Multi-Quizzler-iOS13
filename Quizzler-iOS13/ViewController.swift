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
//    Build struct for Puzzle
    struct Question {
        var asking : String
        var answer : Bool
    }
//    make Question instance
    let questions = [
        Question(asking: "three minus two is one", answer: true),
        Question(asking: "two is larger than one", answer: true),
        Question(asking: "ten is smaller than five", answer: true),
        Question(asking: "twenty divided by two is five", answer: false),
        Question(asking: "zero is positive", answer: false)
    ]
    
//    make the list of questions structs
    
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
        questionText.text = questions[questionNumber].asking
//        TEST: print each question answer:
        print(questions[questionNumber].answer)
    }
    
    func nextQuestion()  {
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        updateUI()
    }
}

