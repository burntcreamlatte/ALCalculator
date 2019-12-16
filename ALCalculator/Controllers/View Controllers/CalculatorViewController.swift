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
    var tipPercent: Double = 0.1
    var totalBillString: String = ""
    var totalBillToCalculate: Double = 0.00
    var tipTotal: Double = 0.00
    
    // MARK: - Outlets
    @IBOutlet weak var tipPercentSegmentedControl: TipPercentSegmentedControl!
    @IBOutlet weak var totalToCalcLabel: UILabel!
    @IBOutlet weak var tipThisMuchLabel: UILabel!
    
    @IBOutlet weak var nineButton: CalcButton!
    @IBOutlet weak var eightButton: CalcButton!
    @IBOutlet weak var sevenButton: CalcButton!
    @IBOutlet weak var sixButton: CalcButton!
    @IBOutlet weak var fiveButton: CalcButton!
    @IBOutlet weak var fourButton: CalcButton!
    @IBOutlet weak var threeButton: CalcButton!
    @IBOutlet weak var twoButton: CalcButton!
    @IBOutlet weak var oneButton: CalcButton!
    @IBOutlet weak var zeroButton: CalcButton!
    @IBOutlet weak var decimalButton: CalcButton!
    @IBOutlet weak var clearButton: UIButton!
    
    
    
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
    
    // MARK: - Calculation Methods
    func calculateTip() {
        guard let totalBillDecimal = Double(totalBillString) else { return }
        tipTotal = totalBillDecimal * tipPercent
    }
    
    // MARK: - Helper Methods
    func updateBill() {
        totalToCalcLabel.text = "$\(totalBillString)"
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: - Button Tap Methods
    @IBAction func tipButtonTapped(_ sender: UIButton) {
        calculateTip()
        updateBill()
        tipThisMuchLabel.text = "$\(tipTotal)"
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        totalBillString = ""
        
        totalToCalcLabel.text = "$0"
        tipThisMuchLabel.text = "$0"
    }
    
    @IBAction func nineTapped(_ sender: Any) {
        if let number = nineButton.titleLabel?.text {
            totalBillString.insert(number.first!, at: totalBillString.endIndex)
            updateBill()
        }
    }
    @IBAction func eightTapped(_ sender: Any) {
        if let number = eightButton.titleLabel?.text {
            totalBillString.insert(number.first!, at: totalBillString.endIndex)
            updateBill()
        }
    }
    @IBAction func sevenTapped(_ sender: Any) {
        if let number = sevenButton.titleLabel?.text {
            totalBillString.insert(number.first!, at: totalBillString.endIndex)
            updateBill()
        }
    }
    @IBAction func sixTapped(_ sender: Any) {
        if let number = sixButton.titleLabel?.text {
            totalBillString.insert(number.first!, at: totalBillString.endIndex)
            updateBill()
        }
    }
    @IBAction func fiveTapped(_ sender: Any) {
        if let number = fiveButton.titleLabel?.text {
            totalBillString.insert(number.first!, at: totalBillString.endIndex)
            updateBill()
        }
    }
    @IBAction func fourTapped(_ sender: Any) {
        if let number = fourButton.titleLabel?.text {
            totalBillString.insert(number.first!, at: totalBillString.endIndex)
            updateBill()
        }
    }
    @IBAction func threeTapped(_ sender: Any) {
        if let number = threeButton.titleLabel?.text {
            totalBillString.insert(number.first!, at: totalBillString.endIndex)
            updateBill()
        }
    }
    @IBAction func twoTapped(_ sender: Any) {
        if let number = twoButton.titleLabel?.text {
            totalBillString.insert(number.first!, at: totalBillString.endIndex)
            updateBill()
        }
    }
    @IBAction func oneTapped(_ sender: Any) {
        if let number = oneButton.titleLabel?.text {
            totalBillString.insert(number.first!, at: totalBillString.endIndex)
            updateBill()
        }
    }
    @IBAction func zeroTapped(_ sender: Any) {
        if let number = zeroButton.titleLabel?.text {
            totalBillString.insert(number.first!, at: totalBillString.endIndex)
            updateBill()
        }
    }
    @IBAction func decimalTapped(_ sender: Any) {
        if let number = decimalButton.titleLabel?.text {
            totalBillString.insert(number.first!, at: totalBillString.endIndex)
            updateBill()
        }
    }
}
