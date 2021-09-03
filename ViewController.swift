//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Dhwanil Mehta on 07/08/21.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var group: UILabel!
    
    
    @IBOutlet weak var people: UITextField!
    
    @IBOutlet weak var ind: UILabel!
    
    @IBOutlet weak var icost: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
       
            
    @IBAction func calculateTip(_ sender: Any) {
    
    let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercenteges = [0.15, 0.18, 0.20]
        let tip = bill * tipPercenteges[tipControl.selectedSegmentIndex]
        let split = Double(people.text!) ?? 0
        let total = (bill + tip);
        let individual_cost = total / split;
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        icost.text = String(format: "$%.2f", individual_cost)
        
        
    }
        
}
    


