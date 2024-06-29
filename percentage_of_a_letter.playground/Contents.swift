import Foundation

func percentageLetter(_ s: String, _ letter: Character) -> Int {
    var count = 0.0
    for char in s {
        if char == letter {
            count += 1
        }
    }
    let result = count/Double(s.count)*100.0
    return Int(result)
}




percentageLetter("imzvkvgpxjzpwzyrrlbycwgprhvtjzxyjrfpmlaqbdwbxycgboctyulphjhqleibetkpsbmoekjldcdtdopbpvvbfbkxarwzexeqvlymfldmcrkcyqnxzclpbatjsqzqdjyisnqvefyldgsjfgjkegfrnmneqzubhzoqoqtvmrhftijquhrnnyojzhlyjmvyumdgxpcegakbfylxtxuhrsybsxkllbeyapdrapvyynibyzpmnokmfrsbaxqfmieeiuuvicmdqkewzxkgaixyxjokrzfzgythnrlh", "a")

