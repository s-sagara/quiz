//
//  quiz.swift
//  quiz
//
//  Created by nttr on 2017/07/20.
//  Copyright © 2017年 nttr. All rights reserved.
//

import UIKit


class Quiz: NSObject {
    
    var lefts: Int
    var text: String
    var option1: String
    var option2: String
    var option3: String
    var answer: String
    var inputed_lefts: Int!
    
    
    init(lefts: Int, text:String, option1:String, option2:String, option3:String, answer:String) {
        
        self.lefts = lefts
        self.text = text
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.answer = answer
        
    }

    class func shuffle(quizArray: [Quiz]) -> [Quiz]{
    
        var quiz = quizArray
        var shuffledQuizArray: [Quiz] = []
        for _ in 0..<quiz.count{
        
            let index = Int(arc4random_uniform(UInt32(quiz.count)))
            shuffledQuizArray.append(quiz[index])
            quiz.remove(at: index)
        }
        return shuffledQuizArray
    }
    
    //class func current_lefts() -> Int{
    //
    //}
    
}
