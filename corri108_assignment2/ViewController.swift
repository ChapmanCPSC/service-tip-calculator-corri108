//
//  ViewController.swift
//  corri108_assignment2
//
//  Created by Corrin, Will on 4/6/16.
//  Copyright © 2016 Corrin, Will. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var serviceField: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTip(sender: AnyObject)
    {
        if(priceField.text != nil && serviceField.text != nil)
        {
            if(Double(priceField.text!) != nil && Double(serviceField.text!) != nil)
            {
                var price = 0.0
                var service = 0.0
                price = Double(priceField.text!)!
                service = Double(serviceField.text!)!
                
                var amt = 0.0
                
                if(service == 1 || service == 2 || service == 3)
                {
                    amt = price * 0.1
                }
                else if(service == 4 || service == 5)
                {
                    amt = price * 0.13
                }
                else if(service == 6 || service == 7)
                {
                    amt = price * 0.15
                }
                else if(service == 8 || service == 9)
                {
                    amt = price * 0.2
                }
                else if(service == 10)
                {
                    amt = price * 0.25
                }
                
                tipAmount.text = String(amt)
            }
            else
            {
                tipAmount.text = "Not valid inputs."
            }
        }
        else
        {
            tipAmount.text = "Not valid inputs."
        }
    }

}

