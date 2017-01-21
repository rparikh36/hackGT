//
//  ViewController.swift
//  TapGame
//
//  Created by Risha Parikh on 1/21/17.
//  Copyright © 2017 Risha Parikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var gameButton: UIButton!
    var count1 = 0
    var count2 = 0
    var isGameStarted = false;
    
    //increments player 2 count
    @IBAction func countPlayer2(_ sender: UIButton) {
        count2 += 1;
        updateUI()
    }
    
    //increments player 1 count
    @IBAction func countPlayer1(_ sender: UIButton) {
        count1 += 1;
        updateUI()
    }
    
    //button for starting the game
    @IBAction func startButton(_ sender: UIButton) {
        sender.isEnabled = false;
        if !isGameStarted {
            updateUI()
            isGameStarted = true
            gameButton.setTitle("Reset",for: .normal)
        } else {
            reset()
        }
    }
    
    //updates scores
    func updateUI() {
        player1.text = "Player 1: \(count1)"
        player2.text = "Player 2: \(count2)"
    }
    
    //reset game stats
    func reset() {
        gameButton.setTitle("Start",for: .normal)
        isGameStarted = false;
        count1 = 0
        count2 = 0
        player1.text = "Player 1: \(count1)"
        player2.text = "Player 2: \(count2)"
    }
}

