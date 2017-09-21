//
//  SignupViewController.swift
//  Auto Accounting
//
//  Created by HSM3 on 20/09/17.
//  Copyright © 2017 HandySolver. All rights reserved.
//
import UIKit


class SignupViewController: UIViewController  {
    
    
    @IBOutlet weak var email: RoundTextField!
    
    @IBOutlet weak var password: RoundTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    
    
    
    
    @IBAction func onSignup(_ sender: Any) {
        
        
        if !email.text!.isValidEmail() {
            showAlert(Message: "Email Not Valid")
            return
        }
        
        if password.text!.isEmpty {
            showAlert(Message: "Password Not Valid")
            return
        }
        
        
       
        // Run api . get UserId then save
        
        //  Sample API CALL
        
        //        ApiManager.instance.getData(url: levelUrl) { (data) in
        //        Level is model Class
        //        let levelModel =  Level(json: JSON(data))
        //
        //
        //       }
        //
        
        
        
        UserDefaultsManager.userDefaultsManager.saveUserDetails( id: "10")
        self.restartApp()
    }
    
}
