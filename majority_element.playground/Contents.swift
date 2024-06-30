import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    var count = [Int: Int]()
    
    for ele in nums {
        count[ele, default: 0] += 1
    }
    
    for (key, value) in count {
        if count[key]! > (nums.count/2) {
            return key
        }
    }
    return 0
}

majorityElement([2,2,1,1,1,2,2])
