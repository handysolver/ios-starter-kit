//
//  ForgotPasswordViewController.swift
//  Auto Accounting
//
//  Created by HSM3 on 20/09/17.
//  Copyright © 2017 HandySolver. All rights reserved.
//


import UIKit

class ForgotPasswordViewController: UIViewController {
    
    
    @IBOutlet weak var emailId: RoundTextField!
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
    @IBAction func onDone(_ sender: Any) {
        
        if !emailId.text!.isValidEmail() {
             showErrorBanner(message: "Please Enter Valid Email")
            return
        }
        
        
        
        
//        FirebaseManager.sharedInstance.forgotPassword(email: email)
        
    }
    
    
    
}
