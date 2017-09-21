 
 import  UIKit
 
 
 class UserDefaultsManager {
    
    
    public  static let userDefaultsManager = UserDefaultsManager()
    
    
    
    let defaults = UserDefaults.standard

    
    func haveSkipIntro() -> Bool {
        
        if  defaults.bool(forKey: "skipIntro" ) {
             return true
        }
        else {
            
            return false
        }

    }
    
    func introFinish() {
        defaults.set(true, forKey: "skipIntro")
    }
    
    func saveUserDetails( id : String) {
        
         defaults.set(id, forKey: "userId")
    
    }
    
    func getUserId() -> String {
        
     return defaults.string(forKey: "userId" ) ?? ""
        
    }

    func logOut() {
        
        defaults.removeObject(forKey: "userId")
    }
    
    
 }
