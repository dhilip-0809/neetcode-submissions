class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let a = Array(s)
        var arr: [Character] = []
        var maxV = 0
        for ch in a {
            while arr.contains(ch) {
                arr.removeFirst()
            }
            arr.append(ch)
            maxV = max(maxV, arr.count)

        }
        return maxV
    }
}
