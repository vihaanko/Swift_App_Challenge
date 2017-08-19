//
//  LuckySum.swift
//  HomeworkA
//
//  Created by Cyril Garcia on 8/18/17.
//  Copyright © 2017 By Cyril. All rights reserved.
//

import UIKit

class LuckySum: UIViewController {
    
    @IBOutlet var textfieldInput: UITextField!
    @IBOutlet var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func goAction() {
        
        // Convert our textfield input to an array of strings
        let array = textfieldInput.text?.components(separatedBy: " ")
        
        var i = 0
        var sum = 0
        
        while i < array!.count {
            
            let num = Int(array![i])!
         
            if num != 13 {
                sum += num
                i += 1
            } else {
                i += 2
            }
        }
        
        // Set the results == to our resultsLabel.text
        resultsLabel.text = "\(sum)"
    }
}
