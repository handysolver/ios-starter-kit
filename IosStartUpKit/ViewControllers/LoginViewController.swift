//
//  ViewController.swift
//  NGIntroView-SWIFT3
//
//  Created by Nitin Gohel on 28/02/17.
//  Copyright © 2017 Nitin Gohel. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController  {
    
    
    @IBOutlet weak var email: RoundTextField!
    
    @IBOutlet weak var password: RoundTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if UserDefaultsManager.userDefaultsManager.haveSkipIntro() {
            print("Intro skipped")

        }
        else {
            LoadIntro()
        }
    }
    
    
    
    
    
    @IBAction func onLogin(_ sender: Any) {
        
        
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


extension LoginViewController : EAIntroDelegate{
    
    // functions for introPages
    
    
    func LoadIntro() {
        
        let ingropage1 = EAIntroPage.init(customViewFromNibNamed: "page1")
        let ingropage2 = EAIntroPage.init(customViewFromNibNamed: "page2")
        let ingropage3 = EAIntroPage.init(customViewFromNibNamed: "page3")
        
        
        
        let introView = EAIntroView.init(frame: self.view.bounds, andPages: [ingropage1!,ingropage2!,ingropage3!])
        introView?.delegate = self
        
        introView?.show(in: self.view)
    }
    
    func introDidFinish(_ introView: EAIntroView!, wasSkipped: Bool) {
        if(wasSkipped) {
            
            print("Intro skipped")
            
        } else {
            
            print("Intro skipped")
        }
        
        UserDefaultsManager.userDefaultsManager.introFinish()
    }
}

