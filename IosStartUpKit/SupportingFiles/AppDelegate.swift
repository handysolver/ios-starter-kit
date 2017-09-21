//
//  AppDelegate.swift
//  Auto Accounting
//
//  Created by HSM3 on 20/09/17.
//  Copyright © 2017 HandySolver. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func checkLogin() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        if(UserDefaultsManager.userDefaultsManager.getUserId().isEmpty) {
            
            print(UserDefaultsManager.userDefaultsManager.getUserId())
            
            let initialViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController")
            self.window?.rootViewController = initialViewController
            self.window?.makeKeyAndVisible()
        }
        else {
            print(UserDefaultsManager.userDefaultsManager.getUserId())
            let initialViewController = storyboard.instantiateViewController(withIdentifier: "SlideMenuContainer")
            self.window?.rootViewController = initialViewController
            self.window?.makeKeyAndVisible()
            
            
        }
        
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
         checkLogin()
        
        
        
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.tintColor = UIColor.white
        navBarAppearance.barTintColor = UIColor.init(hex: APP_COLOR_PRIMARY)
        navBarAppearance.isTranslucent = false
   
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

