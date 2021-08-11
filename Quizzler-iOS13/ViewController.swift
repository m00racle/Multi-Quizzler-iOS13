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

//    make Question instance
    let questions = [
        Question(q: "three minus two is one", a: true),
        Question(q: "two is larger than one", a: true),
        Question(q: "ten is smaller than five", a: true),
        Question(q: "twenty divided by two is five", a: false),
        Question(q: "zero is positive", a: false)
    ]
    
//    make the list of questions structs
    
//    hard coded the questions index locator
    var questionNumber = 0
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func trueButtonPressed(_ sender: Any) {
        checkAnswer(input: true)
        nextQuestion()
    }
    
    @IBAction func falseButtonPressed(_ sender: Any) {
        checkAnswer(input: false)
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
        print("answer: ", questions[questionNumber].answer)
    }
    
    func nextQuestion()  {
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        updateUI()
    }
    
    func checkAnswer(input:Bool) {
        if input == questions[questionNumber].answer {
            print("input is correct")
        } else {
            print("input is wrong")
        }
    }
}

