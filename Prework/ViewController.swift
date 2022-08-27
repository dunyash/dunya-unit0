//
//  ViewController.swift
//  Prework
//
//  Created by Dunyagozel Durdyyeva on 8/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var tipSliderControl: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tipSliderControl.value = 15
        
    }
    
    @IBAction func sliderTipController(_ sender: Any) {
        
        let tempSliderValue = tipSliderControl.value
        
        rateLabel.text = String(Int(tempSliderValue)) + ("%")
        let bill = Double(billAmountTextField.text!) ?? 0
        let tip = (Double(Int(tempSliderValue)) * bill) / 100
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        //rateLabel.text = String(format: "$%.0f", (sender //as AnyObject).value)
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get Total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        rateLabel.text = String(Int(tipPercentage[tipControl.selectedSegmentIndex]*100)) + ("%")
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        //rateLabel.text = String(format: "$%.0f", (sender //as AnyObject).value)
        
    }
    
}

