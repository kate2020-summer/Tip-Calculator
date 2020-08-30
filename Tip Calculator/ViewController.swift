//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Chen Kong on 8/30/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var splitNumTextField: UITextField!
    @IBOutlet weak var tipsLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var perPersonLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    }
    
    var bill = 0.0
    @IBAction func billAmount(_ sender: Any) {
        bill = Double(billAmountTextField.text!) ?? 0.0
    }
    var count = 1
    @IBAction func splitNum(_ sender: Any) {
        count = Int(splitNumTextField.text!) ?? 1
    }
    
    @IBAction func tipCalculate(_ sender: UISlider) {
        let tipPercentage = Int(sender.value)
        let tips = bill * Double(tipPercentage) / 100.00
        let total = bill + tips
        let per = total/Double(count)
        tipPercentageLabel.text = String("\(tipPercentage)%")
        tipsLabel.text = String(format: "$%.2f",tips)
        totalLabel.text = String(format: "$%.2f",total)
        perPersonLabel.text = String(format: "$%.2f",per)
        
    }
    
}

