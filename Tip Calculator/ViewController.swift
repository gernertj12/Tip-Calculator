//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Jack Gernert on 8/28/18.
//  Copyright © 2018 Jack Gernert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var peopleSlider: UISlider!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var eachPersonAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func calculateEverything() {
        
        let amount = (amountTextField.text! as NSString).doubleValue
        let tipPercent = tipSlider.value
        let tipAmount = amount * Double(tipPercent) / 100
        tipAmountLabel.text = "Tip Amount : \(round(tipAmount * 100)/100)"
        tipPercentageLabel.text = "\(round(tipPercent * 10)/10)%"
        
        let totalAmount = amount + tipAmount
        totalAmountLabel.text = "Total Amount : \(round(totalAmount * 100)/100)"
        
        let numberOfPeople = Int(peopleSlider.value)
        peopleLabel.text = "Total People : \(numberOfPeople)"
        
        eachPersonAmountLabel.text = "Each Person Pays : \(round(totalAmount/Double(numberOfPeople)*100)/100)"
        
    }
    @IBAction func peopleChanged(_ sender: Any) {
        calculateEverything()
    }
    @IBAction func tipChanged(_ sender: Any) {
        
        calculateEverything()
    }
    @IBAction func amountChanged(_ sender: Any) {
        
        calculateEverything()
    }
}

