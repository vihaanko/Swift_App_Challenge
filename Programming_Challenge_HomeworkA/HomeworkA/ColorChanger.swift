//
//  ColorChanger.swift
//  HomeworkA
//
//  Created by Cyril Garcia on 8/18/17.
//  Copyright © 2017 By Cyril. All rights reserved.
//

import UIKit

class ColorChanger: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func switchColors() {
        
        let colorsArray = [UIColor.blue, UIColor.red, UIColor.brown, UIColor.cyan, UIColor.green]
        
        let i = Int(arc4random()%UInt32(colorsArray.count))
        
        self.view.backgroundColor = colorsArray[i]
        
    }
}
