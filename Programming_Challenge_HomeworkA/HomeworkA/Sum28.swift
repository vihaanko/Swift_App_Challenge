//
//  ViewController.swift
//  HomeworkA
//
//  Created by Cyril Garcia on 8/18/17.
//  Copyright © 2017 By Cyril. All rights reserved.
//

import UIKit

class Sum28: UIViewController {

    @IBOutlet var textFieldInput: UITextField!
    @IBOutlet var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // Create an IBAction
    @IBAction func goAction() {
        
        // Convert our textfield input to an array of strings
        let array = textFieldInput.text?.components(separatedBy: " ")
        
        // Create a counter
        var sum2s = 0
        
        // Use a for-each loop or a regular for-loop to iterate through the elements of our array
        for num in array! {
            
            // Since array is an array of strings, we want to convert each element into an integer. So we convert num to an int like this Int(num)!
            if Int(num)! == 2 {
                
                // Set the variable sum2s equal to the current value of sum2s + Int(num)!
                sum2s += Int(num)!

            }
        }
        
        // Set the results == to our resultsLabel.text
        resultsLabel.text = "\(sum2s == 8)"
    }


}

