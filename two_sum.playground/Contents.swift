import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [Int]()
    for i in 0 ..< nums.count  {
        for z in i + 1 ..< nums.count {
            if nums[i] + nums[z] == target {
                result.append(i)
                result.append(z)
                break
            }
        }
        
    }
    return result
}

twoSum([3, 2, 4], 6)
