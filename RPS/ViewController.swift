//
//  ViewController.swift
//  RPS
//
//  Created by Sharma, Dhruv on 4/4/19.
//  Copyright © 2019 Sharma, Dhruv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var gameStatus: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUiFor(gameState: .start)
    }

    @IBAction func rockButtonPressed(_ sender: UIButton) {
        play(userSign: .rock)
    }
    @IBAction func scissorsButtonPressed(_ sender: Any) {
        play(userSign: .scissors)
    }
    @IBAction func paperButtonPressed(_ sender: UIButton) {
        play(userSign: .paper)
        
    }
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        updateUiFor(gameState: .start)
    }
    
    func play(userSign: Sign) {
        rockButton.isHidden = true
        paperButton.isHidden = true
        scissorsButton.isHidden = true
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        switch userSign {
        case .rock:
            rockButton.isHidden = false
        case .paper:
            paperButton.isHidden = false
        case .scissors:
            scissorsButton.isHidden = false
        }
        let aiSign = randomSign()
        appSign.text = aiSign.emoji
        updateUiFor(gameState: userSign.fights(aiSign))
    }
    
    
    func updateUiFor(gameState: GameState) {
        gameStatus.text = gameState.status
        self.view.backgroundColor = gameState.backgroundColor
        if gameState == .start {
            appSign.text = "👾"
            playAgainButton.isHidden = true
            rockButton.isHidden = false
            scissorsButton.isHidden = false
            paperButton.isHidden = false
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsButton.isEnabled = true
        } else {
            playAgainButton.isHidden = false
        }
        
    }
    
}

