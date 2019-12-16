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
        //self.layer.borderWidth = 1
        //self.layer.borderColor = UIColor.systemBlue.cgColor
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
      }

}
