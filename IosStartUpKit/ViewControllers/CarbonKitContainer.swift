//
//  CarbonKitContainer.swift
//  Auto Accounting
//
//  Created by HSM3 on 20/09/17.
//  Copyright © 2017 HandySolver. All rights reserved.
//


import UIKit


class CarbonKitContainer: UIViewController, CarbonTabSwipeNavigationDelegate {
    
    var items = NSArray()
    var carbonTabSwipeNavigation: CarbonTabSwipeNavigation = CarbonTabSwipeNavigation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "CarbonKit"
        items = [ "Categories", "Top Free"]
        carbonTabSwipeNavigation = CarbonTabSwipeNavigation(items: items as [AnyObject], delegate: self)
        carbonTabSwipeNavigation.insert(intoRootViewController: self)
        self.style()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func style() {
    
         carbonTabSwipeNavigation.setTabExtraWidth(self.view.frame.width / CGFloat(items.count) )
        
    //    let color: UIColor = UIColor(red: 24.0 / 255, green: 75.0 / 255, blue: 152.0 / 255, alpha: 1)
//        self.navigationController!.navigationBar.isTranslucent = false
//        self.navigationController!.navigationBar.tintColor = UIColor.white
//        self.navigationController!.navigationBar.barTintColor = color
//        self.navigationController!.navigationBar.barStyle = .blackTranslucent
//        carbonTabSwipeNavigation.toolbar.isTranslucent = false
//        carbonTabSwipeNavigation.setIndicatorColor(color)
//        carbonTabSwipeNavigation.setTabExtraWidth(30)
//        carbonTabSwipeNavigation.carbonSegmentedControl?.setWidth(80, forSegmentAt: 0)
//        carbonTabSwipeNavigation.carbonSegmentedControl?.setWidth(80, forSegmentAt: 1)
//        carbonTabSwipeNavigation.carbonSegmentedControl?.setWidth(80, forSegmentAt: 2)
//        
//        carbonTabSwipeNavigation.setNormalColor(UIColor.black.withAlphaComponent(0.6))
//        carbonTabSwipeNavigation.setSelectedColor(color, font: UIFont.boldSystemFont(ofSize: 14))
//        
    }
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        
        switch index {
        case 0:
            return self.storyboard!.instantiateViewController(withIdentifier: "ViewControllerOne") as! ViewControllerOne
        case 1:
            return self.storyboard!.instantiateViewController(withIdentifier: "ViewControllerOne") as! ViewControllerOne
        default:
            return UIViewController()
        }
        
    }
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, didMoveAt index: UInt) {
        NSLog("Did move at index: %ld", index)
    }
    
}
