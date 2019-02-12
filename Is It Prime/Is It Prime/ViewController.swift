//
//  ViewController.swift
//  Is It Prime
//
//  Created by Chibuzor Ejimofor on 10/25/17.
//  Copyright © 2017 Chibuzor Ejimofor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var primeTextField: UITextField!
    @IBOutlet weak var resultField: UILabel!
    @IBAction func buttonPress(_ sender: AnyObject) {
        if let userEnteredString = primeTextField.text {
            let userEnteredInteger = Int(userEnteredString)
            if let number = userEnteredInteger {
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                var i = 2
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                if isPrime == true {
                resultField.text = "\(number) is prime!"
                } else {
                    resultField.text = "\(number) is not prime!"
        }
            } else {
                resultField.text = "Error, please enter a positive whole number"
}
}
}
}
