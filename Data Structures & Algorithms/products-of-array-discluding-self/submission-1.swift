class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var pre = Array(repeating: 1, count: nums.count)
        var post = Array(repeating: 1, count: nums.count)
        var res = Array(repeating: 1, count: nums.count)
        for i in 1 ..< nums.count {
            pre[i] = nums[i - 1] * pre[i - 1]
        }
        for i in (0 ..< nums.count - 1).reversed() {
             post[i] = nums[i + 1] * post[i + 1]
        }
        for i in 0 ..< nums.count {
            res[i] = pre[i] * post[i]
        }
        return res
    }
}
