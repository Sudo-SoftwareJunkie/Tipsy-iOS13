//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    //Ten percent tip is selected by default
    var tipPercentage = 0.1
    //The minimum and default amountOfPeople
    var amountOfPeople = 2
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        if (zeroPctButton.isSelected) {
            tipPercentage = 0.0
        }
        else if (tenPctButton.isSelected) {
            tipPercentage = 0.1
        }
        else if (twentyPctButton.isSelected) {
            tipPercentage = 0.2
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        
        amountOfPeople = Int(sender.value)
        splitNumberLabel.text = String(amountOfPeople)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let valuePerPerson = (Double(billTextField.text ?? "0") ?? 0) * (1 + tipPercentage) / Double(amountOfPeople)
        print(String(format: "%.2f", valuePerPerson))
    }
}

