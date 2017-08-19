//
//  MostRepeatedCharacters.swift
//  HomeworkA
//
//  Created by Cyril Garcia on 8/18/17.
//  Copyright © 2017 By Cyril. All rights reserved.
//

import UIKit

class MostRepeatedCharacters: UIViewController {
    
    @IBOutlet var textViewInput: UITextView!
    @IBOutlet var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
    @IBAction func mostRepeatedCharacter() {
        
        let str = textViewInput.text!
        
        // Create your dictionary of type [Character : Int]
        var counter = [Character : Int]()
        
        // Iterate through each character in the string
        for c in str.characters {
            
            // If counter[c] exists, get the count
            if let count = counter[c] {
                // get the count and increment by 1
                counter[c] = count + 1
            } else {
                // Otherwise, set it to 1
                counter[c] = 1
            }
        }
        
        // Print your values
        resultsLabel.text = "\(counter.values)"
        
    }
    
    
}
