import Foundation
func checkPalindrome(_ word: String) -> Bool {
    let clone = String(word.reversed())
    if clone == word {
        return true
    }
    return false
}
func firstPalindrome(_ words: [String]) -> String {
    for ele in words {
        if checkPalindrome(ele) {
            return ele
        }
    }
    return ""
}

print(firstPalindrome(["abc","car","ada","racecar","cool"]))

