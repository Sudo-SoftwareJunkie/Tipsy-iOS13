//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Kyle Jordan on 2/23/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var tipPercentage: Double = 0.0
    var amountOfPeople: Int = 2
    var valuePerPerson = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "$%.2f", valuePerPerson)
        settingsLabel.text = "Split between \(amountOfPeople) people, with a tip of \(Int(tipPercentage * 100))%"
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
