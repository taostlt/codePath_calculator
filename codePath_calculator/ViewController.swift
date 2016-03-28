//
//  ViewController.swift
//  codePath_calculator
//
//  Created by Corazon on 3/15/16.
//  Copyright © 2016 Corazon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //comments
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        
        var billAmount = NSString(string: billField.text!).doubleValue
        
        
        
        var tipPercentages = [0.30, 0.25, 0.20, 0.15]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var tip = billAmount*tipPercentage
        
        var total = billAmount + tip
        
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
//        
//        tipLabel.text = String(format: "$%.2f", tip)
//        totalLabel.text = String(format: "$%.2f", tip)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
   
}

