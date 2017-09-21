
import UIKit


let APP_COLOR_PRIMARY = "DC253D"
let BACK_GROUND_COLOR = "C6E9F9"

 

func topWindow() -> UIWindow? {
    for window in UIApplication.shared.windows.reversed() {
        if window.windowLevel == UIWindowLevelNormal && window.isKeyWindow && window.frame != CGRect.zero { return window }
    }
    return nil
}



struct BannerColors {
    static let red = UIColor(red:198.0/255.0, green:26.00/255.0, blue:27.0/255.0, alpha:1.000)
    static let green = UIColor(red:48.00/255.0, green:174.0/255.0, blue:51.5/255.0, alpha:1.000)
    static let yellow = UIColor(red:255.0/255.0, green:204.0/255.0, blue:51.0/255.0, alpha:1.000)
    static let blue = UIColor(red:31.0/255.0, green:136.0/255.0, blue:255.0/255.0, alpha:1.000)
}



func showSuccessBanner(message: String) {
    
    let banner = Banner(title: "Message", subtitle: message, image: nil, backgroundColor: BannerColors.green)
    banner.show(duration: 3.0)
    
}


func showErrorBanner(message: String) {
    
    let banner = Banner(title: "Message", subtitle: message, image: nil, backgroundColor: BannerColors.red)
    banner.show(duration: 3.0)
    
}


public class ActivityIndicator {
    
    
    static let instance  =  ActivityIndicator()
    
     
    
    func show() {
        
        if(topWindow() == nil){
            return
        }
        
        let dimBackGroundView = UIView(frame: CGRect(x: 0, y: 0, width: (topWindow()?.bounds.width)!, height: (topWindow()?.bounds.height)!))
        dimBackGroundView.backgroundColor = UIColor(white: 1, alpha: 0.2)
        
        let activityIndicatorView = NVActivityIndicatorView(frame: CGRect(x: dimBackGroundView.center.x-25, y: dimBackGroundView.center.y-25, width: 50, height: 50), type: NVActivityIndicatorType.ballRotateChase, color: UIColor.red)
        
        dimBackGroundView.addSubview(activityIndicatorView)
        dimBackGroundView.tag = 99;
        topWindow()?.addSubview(dimBackGroundView)
        
        activityIndicatorView.startAnimating()
        
    }
    
    func  hide() {
        
        if(topWindow() == nil){
            return
        }
        
        let dimBackGroundView:UIView? = topWindow()?.viewWithTag(99)
        
        if let activityIndicatorView:NVActivityIndicatorView =  dimBackGroundView?.subviews[0] as? NVActivityIndicatorView{
            activityIndicatorView.stopAnimating()
            dimBackGroundView!.removeFromSuperview()
        }
    }
    
    
    
    func showProgress() {
        
        if(topWindow() == nil){
            return
        }
        
        let dimBackGroundView = UIView(frame: CGRect(x: 0, y: 0, width: (topWindow()?.bounds.width)!, height: (topWindow()?.bounds.height)!))
        dimBackGroundView.backgroundColor = UIColor(white: 1, alpha: 0.4)
        
        let activityIndicatorView = NVActivityIndicatorView(frame: CGRect(x: dimBackGroundView.center.x-25, y: dimBackGroundView.center.y-25, width: 50, height: 50), type: NVActivityIndicatorType.orbit, color: UIColor.red)
        
        dimBackGroundView.addSubview(activityIndicatorView)
        dimBackGroundView.tag = 99;
        topWindow()?.addSubview(dimBackGroundView)
        
        activityIndicatorView.startAnimating()
        
    }
    
   
    
    
}



 
