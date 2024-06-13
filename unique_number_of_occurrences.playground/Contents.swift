import Foundation

func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var count = [Int: Int]()
    
    
    for ele in arr {
        count[ele, default: 0] += 1
    }
    
    var clone = Array(Set(count.keys))
    
    for i in 0 ..< clone.count {
        for z in i+1 ..< clone.count {
            if count[clone[i]] == count[clone[z]] {
                return false
            }
        }
    }
    return true
}

uniqueOccurrences([1,2])
