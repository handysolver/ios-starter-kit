//
//  ExtentionUIViewController.swift
//  ClassPocketApp
//
//  Created by Julia Grant on 19/07/17.
//  Copyright © 2017 HS MM 1. All rights reserved.
//

import UIKit
 
extension UIViewController : UITextFieldDelegate  {
    
    
    
    func dismissVc()  {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
 
    
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    func presnetVc(viewConterlerId : String)     {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: viewConterlerId)
        self.present(vc!, animated: true, completion: nil)
        
    }
    
    func restartApp() {
        print("f")
        // get a reference to the app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // call didFinishLaunchWithOptions ... why?
        appDelegate.application(UIApplication.shared, didFinishLaunchingWithOptions: nil)
    }
    
    
    
    
    
     
    
    
    func addLogo() {
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 27, height: 27))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "header")
        imageView.image = image
        navigationItem.titleView = imageView
    }
    
    func pushVc(viewConterlerId:String){
        
        let vc = storyboard?.instantiateViewController(withIdentifier: viewConterlerId)
        navigationController?.pushViewController(vc!,
                                                 animated: true)
        
    }
    
    
    func showAlert(Message:String) {
        let alert = UIAlertController(title: "Message", message: Message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Okey", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)

    }
   
    
//    func playerDidFinishPlaying() {
//    
//        playerController.dismiss(animated: true)
//        mainController.dismissVc()
//        viewController.onPlay(self)
//    }

    
        
}





