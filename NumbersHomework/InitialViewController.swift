//
//  InitialViewController.swift
//  NumbersHomework
//
//  Created by Cyril Garcia on 8/25/17.
//  Copyright © 2017 By Cyril. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
    @IBOutlet var initialRangeField: UITextField!
    @IBOutlet var finalRangeField: UITextField!
    
    @IBOutlet var primeButtons: UIButton!
    @IBOutlet var evenNumbersButton: UIButton!
    @IBOutlet var fibonacciButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fibonacciButton.addTarget(self, action: #selector(InitialViewController.goToFibonacci), for: .touchUpInside)
        evenNumbersButton.addTarget(self, action: #selector(InitialViewController.goToEvenNumbers), for: .touchUpInside)
        primeButtons.addTarget(self, action: #selector(InitialViewController.goToPrimeNumbers), for: .touchUpInside)
    }
    
    func goToPrimeNumbers() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PrimeNumbersTableView") as! PrimeNumbersTableView
        vc.initial = Int(initialRangeField.text!)!
        vc.final = Int(finalRangeField.text!)!
        self.show(vc, sender: self)
    }
    
    func goToEvenNumbers() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "EvenNumbersTableView") as! EvenNumbersTableView
        vc.initial = Int(initialRangeField.text!)!
        vc.final = Int(finalRangeField.text!)!
        self.show(vc, sender: self)
    }
    
    func goToFibonacci() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "FibonacciTableView") as! FibonacciTableView
        vc.initial = Int(initialRangeField.text!)!
        vc.final = Int(finalRangeField.text!)!
        self.show(vc, sender: self)
    }
}
