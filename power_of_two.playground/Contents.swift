import Foundation

func isPowerOfTwo(_ n: Int) -> Bool {
    if n == 1 {
        return true
    } else {
        var clone = Double(n)
        while clone > 0 {
            if clone == 2{return true}
            clone /= 2
        }
        return false
    }
}

isPowerOfTwo(1073741824)
