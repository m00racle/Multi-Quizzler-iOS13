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
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
//    make the list of questions structs
    
//    hard coded the questions index locator
    var questionNumber = 0
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func trueButtonPressed(_ sender: Any) {
        if checkAnswer(input: "True"){
            trueButton.backgroundColor = UIColor.green
        } else {trueButton.backgroundColor = UIColor.red}
        nextQuestion()
    }
    
    @IBAction func falseButtonPressed(_ sender: Any) {
        if checkAnswer(input: "False") {
            falseButton.backgroundColor = UIColor.green
        } else {falseButton.backgroundColor = UIColor.red}
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
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
    func nextQuestion()  {
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }

        _ = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: {_ in self.updateUI()})
    }
    
    func checkAnswer(input:String) -> Bool {
        if input == questions[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
}

