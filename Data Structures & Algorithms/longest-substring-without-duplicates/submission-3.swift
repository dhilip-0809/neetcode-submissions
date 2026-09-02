class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
       let chars = Array(s)
       var left = 0
       var right = 0
       var m = 0
       var dict: [Character: Int] = [:]

       for (right, c) in chars.enumerated() {
        if let previousIndex = dict[c] {
            left = max(left, previousIndex + 1)
        }
        dict[c] = right
        m = max(m, right - left + 1)
       }
       return m
    }
}
