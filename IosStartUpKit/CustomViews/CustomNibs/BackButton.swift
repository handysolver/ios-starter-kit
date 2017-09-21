//
//  BackButton.swift
//  Auto Accounting
//
//  Created by HSM3 on 20/09/17.
//  Copyright © 2017 HandySolver. All rights reserved.
//
import UIKit

class BackButton : UIButton {
    
    
    override func awakeFromNib() {
        
        self.addTarget(self, action:#selector(handleRegister), for: .touchUpInside)

    }
    
    func handleRegister(sender: UIButton){
        
        print("hh")
        
        
        if var topController = UIApplication.shared.keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            
            if let navigation = topController.navigationController
                
            {
                navigation.popViewController(animated: true)
            }
                
                
            else
                
            {
                topController.dismiss(animated: true, completion: nil)
            }
        }
        
    }
    
}
