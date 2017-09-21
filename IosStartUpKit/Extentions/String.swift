//
//  String.swift
//  Asdvictor
//
//  Created by HSM3 on 18/08/17.
//  Copyright © 2017 Julia Grant. All rights reserved.
//

import Foundation


extension String{
    
    
    static func className(_ aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).components(separatedBy: ".").last!
    }
    
    func substring(_ from: Int) -> String {
        return self.substring(from: self.characters.index(self.startIndex, offsetBy: from))
    }
    
    var length: Int {
        return self.characters.count
    }
    
    
    func dictionaryValue() -> [String: AnyObject]
    {
        if let data = self.data(using: String.Encoding.utf8) {
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as? [String: AnyObject]
                return json!
                
            } catch {
                print("Error converting to JSON")
            }
        }
        return NSDictionary() as! [String : AnyObject]
    }
    
    
    func getYoutubeFormattedDuration() -> String {
        
        let formattedDuration = self.replacingOccurrences(of: "PT", with: "").replacingOccurrences(of: "H", with:":").replacingOccurrences(of: "M", with: ":").replacingOccurrences(of: "S", with: "")
        
        let components = formattedDuration.components(separatedBy: ":")
        var duration = ""
        for component in components {
            duration = duration.characters.count > 0 ? duration + ":" : duration
            if component.characters.count < 2 {
                duration += "0" + component
                continue
            }
            duration += component
        }
        
        return duration
        
    }
    
    func splitString(saperator:String) -> [String] {
        
    
        let data = self.components(separatedBy:saperator)
        return data
        
     }
    
  
    func isValidEmail() ->Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    
}



extension Foundation.Date {
    
    func dashedStringFromDate() -> String {
        let dateFormatter = DateFormatter()
        let date = self
        dateFormatter.dateFormat = "dd MMM yyyy"
        return dateFormatter.string(from: date)
    }
    
    
}
