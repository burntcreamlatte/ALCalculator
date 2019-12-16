//
//  CalcButton.swift
//  ALCalculator
//
//  Created by Aaron Shackelford on 12/16/19.
//  Copyright © 2019 Aaron Shackelford. All rights reserved.
//

import UIKit

class CalcButton: UIButton {

    override func awakeFromNib() {
      super.awakeFromNib()

      setupUI()
    }
    
    func setupUI() {
        self.backgroundColor = .systemBlue
        self.layer.cornerRadius = 10
      }

}

class ClearButton: UIButton {
    
    override func awakeFromNib() {
      super.awakeFromNib()

      setupUI()
    }
    
    func setupUI() {
        self.backgroundColor = .darkGray
        self.setTitleColor(.systemBlue, for: .normal)
        self.layer.cornerRadius = 10
      }

}
