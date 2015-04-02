//
//  Question.swift
//  VGTrivia
//
//  Created by Weihong Chen on 28/03/2015.
//  Copyright (c) 2015 Weihong. All rights reserved.
//

import Foundation

class Question {
    var questionTitle: String
   
    var answerOne: String?
    var answerTwo: String?
    var answerThree: String?
    var answerFour: String?
    var rightAnswer: String?
    
    init(questionTitle:String, answerOne: String, answerTwo: String, answerThree: String, answerFour: String, rightAnswer: String){
        
        
        self.questionTitle = questionTitle
        self.answerOne = answerOne
        self.answerTwo = answerTwo
        self.answerThree = answerThree
        self.answerFour = answerFour
        self.rightAnswer = rightAnswer
        
    }
    
}