//
//  ResultsViewController.swift
//  NumbersHomework
//
//  Created by Cyril Garcia on 8/25/17.
//  Copyright © 2017 By Cyril. All rights reserved.
//

import UIKit

class PrimeNumbersTableView: UITableViewController {
    
    var resultsArray = [Int]()
    var initial: Int!
    var final: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        printPrimeNumbers(i: initial, f: final)
    }
    
    func printPrimeNumbers(i: Int, f: Int) {
        
        for x in i..<f {
            var count = 0
            
            for y in 1..<f {
                if x % y == 0 {
                    count += 1
                    
                }
            }
            
            if count == 2 {
                resultsArray.append(x)
            }
        }
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let object = resultsArray[indexPath.row]
        cell.textLabel?.text = "\(object)"
        return cell
    }
}
