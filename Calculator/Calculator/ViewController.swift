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
    
    @IBAction func toughDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        print("\(digit) was touched")
    }
}

