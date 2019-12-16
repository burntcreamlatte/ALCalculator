//
//  CalculatorViewController.swift
//  ALCalculator
//
//  Created by Aaron Shackelford on 12/16/19.
//  Copyright © 2019 Aaron Shackelford. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    // MARK: - Properties
    var tipPercent: Decimal = 0.1
    var totalBillString: String = ""
    var totalBillToCalculate: Decimal = 0.00
    var tipTotal: Decimal = 0.00
    
    // MARK: - Outlets
    @IBOutlet weak var tipPercentSegmentedControl: TipPercentSegmentedControl!
    @IBOutlet weak var totalToCalcLabel: UILabel!
    @IBOutlet weak var tipThisMuchLabel: UILabel!
    
    @IBOutlet weak var numberButton: UIButton!
    
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Actions
    @IBAction func tipPercentChanged(_ sender: TipPercentSegmentedControl) {
        switch tipPercentSegmentedControl.selectedSegmentIndex {
        case 0: tipPercent = 0.10
        case 1: tipPercent = 0.15
        case 2: tipPercent = 0.2
        case 3: tipPercent = 0.25
        default:
            break
        }
        
    }
    @IBAction func tipButtonTapped(_ sender: UIButton) {
        tipThisMuchLabel.text = "$\(tipTotal)"
        
    }
    
    
    // MARK: - Calculation Methods
    @IBAction func numberTapped(_ sender: CalcButton) {
        totalBillString.last = self.numberButton.titleLabel!.text
        
    }
    
    
    
    
}
