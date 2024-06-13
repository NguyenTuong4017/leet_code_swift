import Foundation

extension String {
    subscript(i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}

func checkNum(_ s: String) -> Bool {
    for char in s {
        if char != "9" {
            return false
        }
    }
    return true
}

func count9(_ s: [Character]) -> Int {
    var count = 0
    for char in s {
        if char == "9" {
            count += 1
        } else {
            break
        }
    }
    return count
}

func plusOne(_ digits: [Int]) -> [Int] {
    
    var result = [Int]()
    var fullNum = ""
    var count = 0
    
    for ele in digits {
        fullNum.append(String(ele))
    }
    
    var length = fullNum.count
    
    if checkNum(fullNum) {
        result.append(1)
        for i in 0 ..< length {
            result.append(0)
        }
        
    } else if fullNum[length-1] == "9" {
        
        var clone = Array(fullNum.reversed())
        count = count9(clone)
        
        for i in 0 ..< count {
            clone[i] = "0"
        }
        
        var changedNum = Int(String(clone[count]))!
        changedNum += 1
        
        clone[count] = Character(String(changedNum))
        
        fullNum = String(clone.reversed())
        
        for char in fullNum {
            result.append(Int(String(char))!)
        }
        
    } else {
        var clone = Array(fullNum)
        var changedNum = Int(String(clone[clone.count-1]))!
        
        changedNum += 1
        
        clone[clone.count-1] = Character(String(changedNum))
        
        fullNum = String(clone)
        
        for char in fullNum {
            result.append(Int(String(char))!)
        }
    }
    
    return result
    
}

plusOne([9,7,9,9])
