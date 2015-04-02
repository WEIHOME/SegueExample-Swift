//
//  ViewController.swift
//  VGTrivia
//
//  Created by Weihong Chen on 28/03/2015.
//  Copyright (c) 2015 Weihong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnAnswerOne: UIButton!{
        didSet{
            btnAnswerOne.addTarget(self, action: "buttonPressed:", forControlEvents: UIControlEvents.TouchDown)
        }
    }
    @IBOutlet weak var btnAnswerTwo: UIButton!{
        didSet{
            btnAnswerTwo.addTarget(self, action: "buttonPressed:", forControlEvents: UIControlEvents.TouchDown)
        }
    }
    @IBOutlet weak var btnAnswerThree: UIButton!{
        didSet{
            btnAnswerThree.addTarget(self, action: "buttonPressed:", forControlEvents: UIControlEvents.TouchDown)
        }
    }
    @IBOutlet weak var btnAnswerFour: UIButton!{
        didSet{
            btnAnswerFour.addTarget(self, action: "buttonPressed:", forControlEvents: UIControlEvents.TouchDown)
        }
    }
    @IBOutlet weak var labelQuestionTitle: UILabel!{
        didSet{
            labelQuestionTitle.text = selectedQuestion?.questionTitle
        }
    }
    
    var questionList:[Question] = [Question]()
    var selectedQuestion: Question?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questionList.append(Question(questionTitle: "Question1", answerOne: "1", answerTwo: "2", answerThree: "3", answerFour: "4", rightAnswer: "1"))
        
        questionList.append(Question(questionTitle: "Question2", answerOne: "1", answerTwo: "2", answerThree: "3", answerFour: "4", rightAnswer: "2"))
        
        questionList.append(Question(questionTitle: "Question3", answerOne: "1", answerTwo: "2", answerThree: "3", answerFour: "4", rightAnswer: "3"))
        
        questionList.append(Question(questionTitle: "Question4", answerOne: "1", answerTwo: "2", answerThree: "3", answerFour: "4", rightAnswer: "4"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        
        selectedQuestion = questionList[Int(arc4random()) % 4]
        btnAnswerOne.setTitle(selectedQuestion?.answerOne, forState: UIControlState.Normal)
        btnAnswerTwo.setTitle(selectedQuestion?.answerTwo, forState: UIControlState.Normal)
        btnAnswerThree.setTitle(selectedQuestion?.answerThree, forState: UIControlState.Normal)
        btnAnswerFour.setTitle(selectedQuestion?.answerFour, forState: UIControlState.Normal)
        labelQuestionTitle.text = selectedQuestion?.questionTitle
        
    }
    
    func buttonPressed(sender: UIButton){
        
        performSegueWithIdentifier("displayAnswer", sender: sender)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "displayAnswer" {
        
            if let vc = segue.destinationViewController as? AnswerViewController {
                
                let btnSelectedAnswer = sender as UIButton
                vc.guessAnswer = btnSelectedAnswer.currentTitle!
                vc.question = selectedQuestion
            }
        }
    }
    
    @IBAction func close(segue:UIStoryboardSegue){
    
    }

}

