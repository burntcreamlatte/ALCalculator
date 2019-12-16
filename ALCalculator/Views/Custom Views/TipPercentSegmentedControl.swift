//
//  TipPercentSegmentedControl.swift
//  ALCalculator
//
//  Created by Aaron Shackelford on 12/16/19.
//  Copyright © 2019 Aaron Shackelford. All rights reserved.
//

import UIKit

class TipPercentSegmentedControl: UISegmentedControl {

    override func awakeFromNib() {
      super.awakeFromNib()

      setupUI()
    }
    
    func setupUI() {
        self.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        self.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.darkGray], for: .normal)
    }

}
