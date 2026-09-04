class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var s = Array(s)
        var left = 0
        var maxCount = 0
        var count = Array(repeating: 0, count: 26)
        let common = Character("A").asciiValue!
        var ans = 0
        for (right, ch) in s.enumerated() {
            let key = Int(s[right].asciiValue! - common)
            count[key] += 1
            maxCount = max(maxCount , count[key])
            while (right - left + 1) - maxCount > k {
                let leftIndex = Int(s[left].asciiValue! - common)
                count[leftIndex] -= 1
                left += 1
            }
            
            ans = max(ans, right - left + 1)
        }
        return ans
    }
}
