class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numSet = Set(nums)
        var longest = 0

        for num in numSet {
            
            if !numSet.contains(num - 1) {
                var current = num
                var long = 1

                while numSet.contains(current + 1) {
                    long += 1
                    current += 1
                }
                longest = max(longest, long)
            }
        }
        return longest
    }
}
