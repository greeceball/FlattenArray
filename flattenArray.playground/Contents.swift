import UIKit

class Solution {
    func flattenArray(_ array: [Any]) -> [String] {
        
        var flattenedArray: [String] = []
        
        for element in array {
            if let number = element as? String {
                flattenedArray.append(number)
            }
            
            if let element = element as? [Any] {
                let numbers = flattenArray(element)
                for number in numbers {
                    flattenedArray.append(number)
                }
            }
        }
        
        return flattenedArray
    }
}

let arrayTest1: [Any] = [["one","two",["three"]],"four"]
let arrayTest2: [Any] = [[["one", "two"],"three", "four"], "five"]

let s = Solution()
s.flattenArray(arrayTest1)
s.flattenArray(arrayTest2)


