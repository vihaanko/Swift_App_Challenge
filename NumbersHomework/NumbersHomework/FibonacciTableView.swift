//
//  FibonacciTableView.swift
//  NumbersHomework
//
//  Created by Cyril Garcia on 8/26/17.
//  Copyright © 2017 By Cyril. All rights reserved.
//

import UIKit

class FibonacciTableView: UITableViewController {
    
    var results: [Int] = [0, 1]
    
    var initial: Int!
    var final: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        printFibonacci(i: initial, f: final)
        
    }
    
    func printFibonacci(i: Int, f: Int) {
        
        var index = i
        var sum = 0
        
        index = results.count - 1
        
        while index < f {
            
            sum = results[index - 1] + results[index]
            results.append(sum)
            index += 1
        }
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let object = results[indexPath.row]
        cell.textLabel?.text = "\(object)"
        return cell
    }
    
}
