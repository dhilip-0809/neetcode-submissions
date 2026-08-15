class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result : [[Int] : [String]] = [:]
        for str in strs {
             var arr = Array(repeating: 0, count: 26)
             let baseValue = Character("a").asciiValue!
                for c in str {
                    if let charValue = c.asciiValue {
                    let index = Int(charValue - baseValue)
                    arr[index] += 1
                }
            }
             result[arr, default: []].append(str)   
        }
return Array(result.values)
    }
}
