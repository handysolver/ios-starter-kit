

protocol PassDataBackProtocol {
    
    func sendDataBack(selectedIndex: Int , resultCode: Int)
}

var passDatadelegate:PassDataBackProtocol?
