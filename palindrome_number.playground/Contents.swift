import Foundation

func isPalindrome(_ x: Int) -> Bool {
    var num1 = String(x)
    
    var num2 = String(num1.reversed())
    
    if (num2 == num1) {
        return true
    } else {
        return false
    }
    
}

isPalindrome(1000000000000001)
