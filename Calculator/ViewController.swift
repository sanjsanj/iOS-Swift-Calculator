//
//  ViewController.swift
//  Calculator
//
//  Created by Sanjay Purswani on 16/07/2016.
//  Copyright © 2016 Sanjay Purswani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        
        userIsInTheMiddleOfTyping = true
    }
    
    @IBAction func performOperation(sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        
        if let mathermaticalSymbol = sender.currentTitle {
            if mathermaticalSymbol == "π" {
                display.text = String(M_PI)
            }
        }
    }
}

