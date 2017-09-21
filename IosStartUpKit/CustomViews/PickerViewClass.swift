// 
// 
// import UIKit
// 
// 
// 
// class PickerViewClass: UIViewController  , UIPickerViewDataSource , UIPickerViewDelegate {
//    
//    
//    var moveFrom = ""
//    var resultCode = 0
//    var row =  0
//    
//    var anyArray = [String]()
//    
//    @IBOutlet var pickerView: UIPickerView!
//    
//    var allTask =  RealmManager.instance.getAllTask()
//    
//    
//    override func viewDidLoad() {
//        
//        
//        self.pickerView.dataSource = self;
//        self.pickerView.delegate = self;
//        
//        
//    }
//    
//    @IBAction func onCelcelPressed(_ sender: Any) {
//        
//        self.dismissVc()
//    }
//    
//    @IBAction func onDonePressed(_ sender: Any) {
//        
//        
//        self.dismissVc()
//        
//         passDatadelegate?.sendDataBack(selectedIndex: row , resultCode: resultCode)
//    }
//    
//    
//    
// }
// 
// extension PickerViewClass {
//    
//    
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        
//        self.row  = row
//    }
//    
// }
// 
// extension PickerViewClass {
//    
//    
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        
//        
//        
//        if moveFrom == "task"
//        {
//            return allTask.count
//
//        }
//        
//            
//        else
//        {
//            return  0
//        }
//        
//        
//        
//    }
//    
//    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
//        
//        var  myTitle:NSAttributedString!
//        
//       
//        
//        
//        if moveFrom == "task"
//        {
//            myTitle  = NSAttributedString(string: allTask[row].taskName, attributes: [NSForegroundColorAttributeName: UIColor.init(hexString: APP_COLOR_PRIMARY)])
//        }
//        
//        
//        
//        return myTitle
//    }
//    
// }
// 
// 
// 
// 
