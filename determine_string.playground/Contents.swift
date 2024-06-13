import Foundation

func countVowel(_ s: Substring) -> Int {
    let vowel: Set<Character> = ["a", "e", "i", "o", "u"]
    var count  = 0
    for char in s {
        if vowel.contains(char){
            count += 1
        }
    }
    return count
}
func halvesAreAlike(_ s: String) -> Bool {
    var s1: Substring
    var s2: Substring
    let middle = s.count / 2
    let clone = s.lowercased()
    s1 = clone.prefix(middle)
    s2 = clone.suffix(middle)
    
    if (countVowel(s1) == countVowel(s2)) {
        return true
    } else {
        return false
    }
}


halvesAreAlike("BoOk")
