//
//  ViewController.swift
//  Destini
//
//  Created by Shreyas Zagade on 3/16/18.
//  Copyright © 2018 Shreyas Zagade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Given Strings
    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    
    var currentState : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeQuestionAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func answerClicked(_ sender: UIButton) {
        switch currentState {
        case 1:
            if sender.tag == 1 {
                currentState = 3
            }else{
                currentState = 2
            }
        case 2:
            if sender.tag == 1 {
                currentState = 3
            }else{
                currentState = 4
            }
        case 3:
            if sender.tag == 1 {
                currentState = 6
            }else{
                currentState = 5
            }
        default:
            print("End of Game")
            return
        }
        changeQuestionAnswer()
    }
    
    func changeQuestionAnswer(){
        var question = ""
        var answer1 = ""
        var answer2 = ""
        switch currentState {
        case 1:
            question = story1
            answer1 = answer1a
            answer2 = answer1b
        case 2:
            question = story2
            answer1 = answer2a
            answer2 = answer2b
        case 3:
            question = story3
            answer1 = answer3a
            answer2 = answer3b
        case 4:
            question = story4
        case 5:
            question = story5
        case 6:
            question = story6
        default:
            question = ""
        }
        questionLabel.text = question
        topButton.setTitle(answer1, for: UIControlState.normal)
        bottomButton.setTitle(answer2, for: .normal)
    }

}

