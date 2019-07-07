//
//  ViewController.swift
//  CurrencyConversionExample
//
//  Created by Peter Witham on 7/7/19.
//  Copyright © 2019 Peter Witham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var entryField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        let numericValue = Int(entryField.text!)!
        let currencyConversion = convertIntToCurrencyAsString(intValue: numericValue)
        displayLabel.text = currencyConversion
    }
    
    
    func convertIntToCurrencyAsString(intValue: Int) -> String {
        var stringVersion: String
        let cFormatter = NumberFormatter()
        cFormatter.usesGroupingSeparator = true
        cFormatter.numberStyle = .currency
        if let currencyString = cFormatter.string(from: NSNumber(value: intValue)) {
            stringVersion = currencyString
        } else {
            stringVersion = "Invalid Message"
        }
        return stringVersion
    }


}

