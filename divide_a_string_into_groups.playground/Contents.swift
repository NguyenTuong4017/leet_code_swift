import Foundation

func checkLength(_ s:String, _ k: Int) -> Bool {
    if s.count == k {return true}
    return false
}

func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
    var result = [String]()
    var addition = 0
    if s.count % k > 0 {
        addition = k - (s.count % k)
    }
    
    var clone = String(repeatElement(fill, count: addition))
   
    var secString = s + clone
    var subString = ""
    
    for char in secString {
        subString += String(char)
        if checkLength(subString, k) {
            result.append(subString)
            subString = ""
        }
        
    }
    
    
    return result
}

divideString("xmjezxjbebnrpomorxjdmcacvrhiiivzrsixrtotxsefkgnwrtnbujapcxbpqpupizlgajzmvmxjwruqtnmtdkwmxvxsowwvqovd", 4, "x")
