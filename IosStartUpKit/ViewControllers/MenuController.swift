//
//  MenuController.swift
//  SamacharFirst
//
//  Created by Piyush /kumar on 06/08/17.
//  Copyright © 2017 Piyush /kumar. All rights reserved.
//

import UIKit

import UIKit

class MenuController: UITableViewController {
    
    var logOutIndex = -10
    var segues = ["showCenterController1", "showCenterController2", "showCenterController1"]
    private var previousIndex: NSIndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLogOut()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return segues.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell")!
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 15)
        
        if indexPath.row == logOutIndex {
            cell.textLabel?.text = "LogOut"
            
        }
        else {
            cell.textLabel?.text = "Switch to controller \(indexPath.row + 1)"
            
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath)  {
        
        if let index = previousIndex {
            tableView.deselectRow(at: index as IndexPath, animated: true)
        }
        
        if indexPath.row == logOutIndex {
           
            
            UserDefaultsManager.userDefaultsManager.logOut()
            self.restartApp()
            
        }
        else {
            sideMenuController?.performSegue(withIdentifier: segues[indexPath.row], sender: nil)
            previousIndex = indexPath as NSIndexPath?
        }
      
    }
     
    
    
    func setupLogOut() {
        
        self.segues.append("Logout")
        self.logOutIndex = segues.count - 1
        
    }
}
