//
//  ViewController.swift
//  Calculator
//
//  Created by Sanjay Purswani on 16/07/2016.
//  Copyright © 2016 Sanjay Purswani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        print("Touched \(digit) Digit")
    }
}

