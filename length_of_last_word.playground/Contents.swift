import Foundation

extension String {
    subscript(i: Int) -> Character? {
        guard i >= 0 && i < self.count else { return nil }
        let index = self.index(self.startIndex, offsetBy: i)
        return self[index]
    }
}


func lengthOfLastWord(_ s: String) -> Int {
    var clone = s.trimmingCharacters(in: .whitespaces)
    
    var words = clone.split(separator: " ")
    
    var last = String(words[words.count-1])
    
    let length = last.count
    
    
    return length
}

lengthOfLastWord("   tuong     ")
