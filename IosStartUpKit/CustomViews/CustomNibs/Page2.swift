//
//  cvzxcvViewController.swift
//  Auto Accounting
//
//  Created by HSM3 on 20/09/17.
//  Copyright © 2017 HandySolver. All rights reserved.
//

import UIKit

class Page2: UIView {

    @IBOutlet weak var label: UILabel!
    
    
    let desc2="Just pick words that identify the following in the SMS:\n 1. Account Number\n2. Amount Value\n3. Credit or Debit Type with word identifying that";
    

    override func awakeFromNib() {
        
        label.text =  desc2 
    }
}
