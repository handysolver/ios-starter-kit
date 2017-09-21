////
////  ApiManager.swift
////  ClassPocketApp
////
////  Created by Julia Grant on 21/07/17.
////  Copyright Â© 2017 HS MM 1. All rights reserved.
////
//
//import Foundation
//import Alamofire
//
//class ApiManager   {
//    
//    static let instance = ApiManager()
//    
//    let qualityOfServiceClass = QOS_CLASS_BACKGROUND
//    
//    
//    
//    func getData(url:String ,  completion: @escaping (_ data: AnyObject)->()) {
//        
//        let escapedStringUrl = url.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
//        
//        print(escapedStringUrl)
//        
//        
//        ActivityIndicator.instance.show()
//        
//        
//        DispatchQueue.global().async {
//            
//            
//            
//            Alamofire.request(escapedStringUrl).responseJSON { response in
//                
//                
//                ActivityIndicator.instance.hide()
//                
//                
//                switch response.result {
//                    
//                case .success(let data):
//                    
//                    print(response)
//                    
//                    completion(data as AnyObject)
//                    
//                case .failure(let _):
//                    
//                    showErrorBanner(message: "There is something Wrong")
//                    //                        print("Request failed with error: \(error)")
//                }
//                
//            }}
//        
//    }
//    
//    
//    
//    func postData(url:String , parms: [String:Any] , completion: @escaping (_ data: AnyObject)->()) {
//        
//        
//        let escapedStringUrl = url.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
//        
//        print(escapedStringUrl)
//        
//        ActivityIndicator.instance.show()
//        
//        DispatchQueue.global().async {
//            
//            
//            
//            Alamofire.request(url, method: .post, parameters: parms, encoding: JSONEncoding.default, headers: nil)
//                .responseJSON { response in
//                    
//                    ActivityIndicator.instance.hide()
//                    
//                    switch response.result {
//                        
//                    case .success(let data):
//                        
//                        print(response)
//                        
//                        completion(data as AnyObject)
//                        
//                    case .failure(let error):
//                        
//                        showErrorBanner(message: "There is something Wrong")
//                        print("Request failed with error: \(error)")
//                    }
//                    
//            }}
//        
//    }
//    
//    
//    
//}
//
//
//
//
//
//
