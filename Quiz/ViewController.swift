//
//  ViewController.swift
//  Quiz
//
//  Created by Tywin Lannister on 29/09/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentQuestionIndex: Int!
    var questions: [[String]]!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerALabel: UILabel!
    @IBOutlet weak var answerBLabel: UILabel!
    @IBOutlet weak var answerCLabel: UILabel!
    @IBOutlet weak var answerDLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func answerButton(_ sender: UIButton) {
        let titleOfButton = sender.title(for: UIControlState.normal)
        let currentQuestionSet = questions[currentQuestionIndex]
        if currentQuestionSet[5] == titleOfButton {
            resultLabel.text = "Correct!"
            resultLabel.textColor = UIColor.green
        }
        else {
            resultLabel.text = "Sorry Wrong"
            resultLabel.textColor = UIColor.red
        }
    
    
    }
    

    
    @IBAction func nextButton(_ sender: UIButton) {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex! += 1
        }
        else {
            currentQuestionIndex = 0
        }
        let currentQuestionSet = questions[currentQuestionIndex]
        questionLabel.text = currentQuestionSet[0]
        answerALabel.text = currentQuestionSet[1]
        answerBLabel.text = currentQuestionSet[2]
        answerCLabel.text = currentQuestionSet[3]
        answerDLabel.text = currentQuestionSet[4]
        resultLabel.text = ""
    }
        
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questions = Array()
        questions.append(["What is 7 + 7?", "14", "15", "16", "17", "A"])
        questions.append(["What is the capital of Spain?", "London", "Paris", "Munich", "Madrid", "D"])
            questions.append(["From what is cider made?", "Oranges", "Apples", "Grapes", "Cherries", "B"])
                currentQuestionIndex = 0
        let currentQuestionSet = questions[currentQuestionIndex]
        questionLabel.text = currentQuestionSet[0]
        answerALabel.text = currentQuestionSet[1]
        answerBLabel.text = currentQuestionSet[2]
        answerCLabel.text = currentQuestionSet[3]
        answerDLabel.text = currentQuestionSet[4]
        resultLabel.text = ""

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

