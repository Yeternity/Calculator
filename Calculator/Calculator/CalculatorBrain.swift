//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by seirra on 2017/4/5.
//  Copyright © 2017年 seirra. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    private var accumulator: Double?
    
    mutating func performOperation(_ symbol: String) {
        //performOperation("π")
        switch symbol {
        case "π":
            //display.text = String(Double.pi)
            accumulator = Double.pi
        case "√":
            //let operand = Double(display.text!)!
            //display.text = String(sqrt(operand))
            if let operand = accumulator{
                accumulator = sqrt(operand)
            }
        default:
            break
        }

        
    }
    
    mutating func setOperand(_ operand: Double) {
        //setOperand(operand: 5.0)
        accumulator = operand
    }
    
    var result: Double? {
        get {
            return accumulator
        }
    }
}
