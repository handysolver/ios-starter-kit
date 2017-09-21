

import UIKit


extension UIView {
    func capture() -> UIImage? {
        var image: UIImage?
        
        if #available(iOS 10.0, *) {
            let format = UIGraphicsImageRendererFormat()
            format.opaque = isOpaque
            let renderer = UIGraphicsImageRenderer(size: frame.size, format: format)
            image = renderer.image { context in
                drawHierarchy(in: frame, afterScreenUpdates: true)
            }
        } else {
            UIGraphicsBeginImageContextWithOptions(frame.size, isOpaque, UIScreen.main.scale)
            drawHierarchy(in: frame, afterScreenUpdates: true)
            image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
        }
        
        return image
    }
    
    
    func addBlockingView() {
        
        let testView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height))
        testView.backgroundColor = .black
        testView.alpha = 0.5
       
        self.addSubview(testView)
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            
            testView.removeFromSuperview()
        }
        
        
    }
    
    
    func addTraspeanetBlockingView() {
        
        let testView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height))
        testView.backgroundColor = .white
        testView.alpha = 0.2
        
        
        self.addSubview(testView)
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            testView.removeFromSuperview()
        }
        
    }
    
    func addTraspeanetBlockingViewInfinite() {
        
        let testView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height))
        testView.backgroundColor = .white
        testView.alpha = 0.2
        
        
         self.addSubview(testView)
        
        
        
    }
    
    
   
    
}
