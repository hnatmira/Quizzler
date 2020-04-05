//
//  ViewController.swift
//  Quizzler
//
//  Created by Miroslav Hnát on 04/04/2020.
//  Copyright © 2020 MiroslavHnat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!

    let quiz = [
        ["Four + Two is equal to Six.", "True"],
        ["Five - Three is greater than One.", "True"],
        ["Three + Eight is less than Ten.", "False"]
    ]

    var questionNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {

        let questionAnswer = quiz[questionNumber][1]
        let userAnswer = sender.currentTitle

        if questionAnswer == userAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }

        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }

        updateUI()
    }

    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }

}


