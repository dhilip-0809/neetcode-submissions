class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var l = 0
        var r = nums.count - 1
        var ans = Int.max

        while l <= r {
            if nums[l] <= nums[r] {
                ans = min(ans, nums[l])
            }
            let m = (l + r) / 2
            if nums[l] <= nums[m] {
                ans = min(ans, nums[l])
                l = m + 1
            } else {
                ans = min(ans, nums[m])
                r = m - 1
            }
        }
        return ans
    }
}
