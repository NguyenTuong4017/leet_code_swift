import Foundation

func firstUniqChar(_ s: String) -> Int {
    let letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
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
