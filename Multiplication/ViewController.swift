//
//  ViewController.swift
//  Multiplication
//
//  Created by Benjamin Pena on 11/21/16.
//  Copyright © 2016 Pena Creations. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxPlayBttnTaps = 0
    var number = 0
    var total = 1
    var sum = 0
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pickNumber: UITextField!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var multiplyButton: UIButton!
    
    @IBAction func playButtonPressed(sender: UIButton!){
        playButton.isHidden = true
        logo.isHidden = true
        pickNumber.isHidden = true
        multiplyButton.isHidden = false
        label.isHidden = false
        
        number = Int(pickNumber.text!)!
    }
    
    @IBAction func multiplyButtonPressed(sender: UIButton!) {
        multiplyFunction()
        maxPlayBttnTaps += 1
        restartGame()
    }
    
    func multiplyFunction() {
        sum = total * number
        label.text = "\(total) * \(number) = \(total)"
        total = sum
    }
    
    func gameOver() -> Bool {
        if maxPlayBttnTaps >= 10 {
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        if gameOver() {
            playButton.isHidden = false
            logo.isHidden = false
            pickNumber.isHidden = false
            label.isHidden = true
            multiplyButton.isHidden = true
            
            pickNumber.text = ""
            total = 1
            maxPlayBttnTaps = 0
            label.text = ""
        }
    }
}

