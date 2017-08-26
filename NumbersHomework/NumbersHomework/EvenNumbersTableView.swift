//
//  EvenNumbersTableView.swift
//  NumbersHomework
//
//  Created by Cyril Garcia on 8/26/17.
//  Copyright © 2017 By Cyril. All rights reserved.
//

import UIKit

class EvenNumbersTableView: UITableViewController {
    
    var resultsArray = [Int]()
    
    var initial: Int!
    var final: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        printEvenNumbers(i: initial, f: final)
    }
    
    func printEvenNumbers(i: Int, f: Int) {
        
        for x in i..<f {
            if x % 2 == 0 {
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
        cell.textLabel?.text = "\(resultsArray[indexPath.row])"
        return cell
    }
}
