import Foundation

func getKey(dictionary: [String.Element: Int], value: Int) -> Character? {
    for (key, val) in dictionary {
        if val == value {
            return key
        }
    }
    return nil
}

func repeatedCharacter(_ s: String) -> Character {
    var count = [String.Element: Int]()
    var second_index = [String.Element: Int]()
    
    for char in s {
        count[char, default: 0] += 1
    }
        
    for i in 0 ..< s.count {
        var index = s.index(s.startIndex, offsetBy: i)
        
        if count[s[index]]! >= 2 {
            
            for z in i+1 ..< s.count {
                var zIndex = s.index(s.startIndex, offsetBy: z)
                
                if s[zIndex] == s[index] && second_index[s[index]] == nil {
                    second_index[s[index]] = z
                    break
                }
            }
            
        }
    }
    count
    let minIndex = second_index.values.min()!
    let result = getKey(dictionary: second_index, value: minIndex)
 
    return result!
}
    


let startTime = Date()

repeatedCharacter("wlsqywxtrjyqrnqwxcbgjxwzvqnrjoljnkcpypnuwxinrqklpvuyzifszwvpalqjsvhbwbvqllhdpshdkhdywzvwdszsepxnhsavavfjpfzhjbechakgzqftkqowbjzgdwogkgyajuyfmxrvlqagunffpncjekpknjxljcnexepkytqwfvwvtrrgjhqlbywxkcyfycnrwpibuegbhpwsveanpmptxxzvvtuekjhozvfwyqzyaxnrwzldnfpmfmlnbwlalnskphxieqlelkzlekywgojlrfxmbxbrylzsbzrtoyrzwaytdwcahnurijmlydyimcbccnkbbzzvntosmwpifumrjzevzmldxnztdoqmzfmskhrwqaxubjyrdjeopmeukccnfngkxcodcxqnnjmcybllhqbcdwduqlvsbfpqcxaxwgjfhwdpycivdkokrsrvcukuhafncwlsqywxtrjyqrnqwxcbgjxwzvqnrjoljnkcpypnuwxinrqklpvuyzifszwvpalqjsvhbwbvqllhdpshdkhdywzvwdszsepxnhsavavfjpfzhjbechakgzqftkqowbjzgdwogkgyajuyfmxrvlqagunffpncjekpknjxljcnexepkytqwfvwvtrrgjhqlbywxkcyfycnrwpibuegbhpwsveanpmptxxzvvtuekjhozvfwyqzyaxnrwzldnfpmfmlnbwlalnskphxieqlelkzlekywgojlrfxmbxbrylzsbzrtoyrzwaytdwcahnurijmlydyimcbccnkbbzzvntosmwpifumrjzevzmldxnztdoqmzfmskhrwqaxubjyrdjeopmeukccnfngkxcodcxqnnjmcybllhqbcdwduqlvsbfpqcxaxwgjfhwdpycivdkokrsrvcukuhafxkcyfycnrwpibuegbhpwsveanpmptxxzvvtuekjhozvfwyqzyaxnrwzldnfpmfmlnbwlalnskphxieqlelkzlekywgojlrfxmbxbrylzsbzrtoyrzwaytdwcahnurijmlydyimcbccnkbbzzvntosmwpifumrjzevzmldxnztdoqmzfmskhrwqaxubjyrdjeopmeukccnfngkxcodcxqnnjmcybllhqbcdwduqlvsbfpqcxaxwgjfhwdpycivdkokrsrvcukuhaf")
for _ in 1...1000000 {
    // Example computation
    let result = 1 + 1
}

let endTime = Date()
let runtime = endTime.timeIntervalSince(startTime)
print("Runtime: \(runtime) seconds")
