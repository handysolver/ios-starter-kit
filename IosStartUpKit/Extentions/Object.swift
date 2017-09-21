//
//
//import RealmSwift
//import Realm
//
//extension Object {
//    func toDictionary() -> [String:AnyObject] {
//        let properties = self.objectSchema.properties.map { $0.name }
//        var dicProps = [String:AnyObject]()
//        for (key, value) in self.dictionaryWithValues(forKeys: properties) {
//            if let value = value as? ListBase {
//                dicProps[key] = value.toArray() as AnyObject
//            } else if let value = value as? Object {
//                dicProps[key] = value.toDictionary() as AnyObject
//            } else {
//                dicProps[key] = value as AnyObject
//            }
//        }
//        return dicProps
//    }
//}
//
//extension ListBase {
//    func toArray() -> [AnyObject] {
//        var _toArray = [AnyObject]()
//        for i in 0..<self._rlmArray.count {
//            let obj = unsafeBitCast(self._rlmArray[i], to: Object.self)
//            _toArray.append(obj.toDictionary() as AnyObject)
//        }
//        return _toArray
//    }
//}
