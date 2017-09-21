//
//  SlideMenuContainer.swift
//  Auto Accounting
//
//  Created by HSM3 on 20/09/17.
//  Copyright © 2017 HandySolver. All rights reserved.
//

import UIKit

import Foundation

class SlideMenuContainer: SideMenuController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: "showCenterController1", sender: nil)
        performSegue(withIdentifier: "containSideMenu", sender: nil)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        SideMenuController.preferences.drawing.menuButtonImage = UIImage(named: "menu")
        SideMenuController.preferences.drawing.sidePanelPosition = .overCenterPanelLeft
        SideMenuController.preferences.drawing.sidePanelWidth = 200
        SideMenuController.preferences.drawing.centerPanelShadow = true
        SideMenuController.preferences.animating.statusBarBehaviour = .showUnderlay
        super.init(coder: aDecoder)
    }
}
