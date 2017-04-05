//
//  ViewController.swift
//  Calculator
//
//  Created by seirra on 2017/4/5.
//  Copyright © 2017年 seirra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleTyping = false
    
    @IBAction func toughDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        //print("\(digit) was touched")
        if userIsInTheMiddleTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userIsInTheMiddleTyping = true
        }
    }
    
    var displayValue: Double {
        get  {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "π":
                //display.text = String(Double.pi)
                displayValue = Double.pi
            case "√":
                //let operand = Double(display.text!)!
                //display.text = String(sqrt(operand))
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
    
    
    
}

