//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by seirra on 2017/4/5.
//  Copyright © 2017年 seirra. All rights reserved.
//

import Foundation

func changeSign(operand: Double) -> Double {
    return -operand
}

struct CalculatorBrain {
    
    private var accumulator: Double?
    
    private enum Operation {
        case constant(Double)
        case unaryOperation((Double) -> Double)
        
    }
    
    private var operations: Dictionary<String, Operation> = [
        "π" : Operation.constant(Double.pi),
        "e" : Operation.constant(M_E),
        "√" : Operation.unaryOperation(sqrt),
        "cos" : Operation.unaryOperation(cos),
        "±" : Operation.unaryOperation(changeSign)
    ]
    
    mutating func performOperation(_ symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            case .constant(let value):
                accumulator = value
                break
            case .unaryOperation(let function):
                if accumulator != nil {
                    accumulator = function(accumulator!)
                }
            }
        }
    }
    /*
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
 */
    
    
    
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
