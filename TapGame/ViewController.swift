//
//  ViewController.swift
//  TapGame
//
//  Created by Risha Parikh on 1/21/17.
//  Copyright © 2017 Risha Parikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerButton2: UIButton!
    @IBOutlet weak var playerButton1: UIButton!
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var gameButton: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    var count1 = Int()
    var count2 = Int()
    var isGameStarted = false;
    var timer = Timer()
    var time = Int()

    //timer
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
    }
    
    //counter
    func counter() {
        time -= 1
        timeLabel.text = "Time \(time)"
        if (time == 0) {
            timer.invalidate()
            isGameStarted = false
            gameButton.setTitle("RESET", for: .normal)
            gameButton.isEnabled = true
        }
    }
    
    //increments player 2 count
    @IBAction func countPlayer2(_ sender: UIButton) {
        if isGameStarted {
            count2 += 1;
            updateUI()
        }
    }
    
    //increments player 1 count
    @IBAction func countPlayer1(_ sender: UIButton) {
        if isGameStarted {
            count1 += 1;
            updateUI()
        }
    }
    
    //button for starting the game
    @IBAction func startButton(_ sender: UIButton) {
        gameButton.setTitle("START", for: .normal)
        gameButton.isEnabled = false
        isGameStarted = true
        time = 10
        count1 = 0
        count2 = 0
        startTimer()
        updateUI()
    }
    
    //updates scores
    func updateUI() {
        if isGameStarted {
            player1.text = "Player 1: \(count1)"
            player2.text = "Player 2: \(count2)"
        }
    }
}

