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
        "ten is smaller than five"
    ]
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func trueButtonPressed(_ sender: Any) {
    }
    
    @IBAction func falseButtonPressed(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        get one question from the questions array
        questionText.text = questions[0]
    }


}

