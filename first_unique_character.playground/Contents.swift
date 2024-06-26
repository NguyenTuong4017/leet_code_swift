import Foundation

func firstUniqChar(_ s: String) -> Int {
    var chatAndCount = [String.Element: Int]()
    
    for char in s {
        if let count = chatAndCount[char] {
            chatAndCount[char] = count + 1
        } else {
            chatAndCount[char] = 1
        }
    }
    for (index, char) in s.enumerated() {
        guard let count = chatAndCount[char], count == 1 else {
            continue
        }
        return index
    }
    return -1
}


firstUniqChar("loveleetcode")
