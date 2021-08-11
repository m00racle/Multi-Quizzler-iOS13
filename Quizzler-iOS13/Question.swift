//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Yanuar Heru on 12/08/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

//    Build struct for Puzzle
    struct Question {
        var asking : String
        var answer : Bool
        
//        initialize
        init(q:String, a:Bool){
            asking = q
            answer = a
        }
    }
