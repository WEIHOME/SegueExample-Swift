//
//  AnswerViewController.swift
//  VGTrivia
//
//  Created by Weihong Chen on 02/04/2015.
//  Copyright (c) 2015 Weihong. All rights reserved.
//

import UIkit

class AnswerViewController: UIViewController {
    @IBOutlet weak var rightOrNot: UILabel!
    @IBOutlet weak var correctAnswer: UILabel!
    
    
    var question: Question?
    var guessAnswer: String?
    
    override func viewWillAppear(animated: Bool) {
        
        if question?.rightAnswer != guessAnswer {
            rightOrNot.text = "Wrong"
            correctAnswer.text = question?.rightAnswer
        }else{
            rightOrNot.text = "Right"
            correctAnswer.text = question?.rightAnswer
        }
        
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        
        
    }
}
