class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var nums = nums.sorted()
        var result: [[Int]] = []
        for (i, v) in nums.enumerated() {
            
            if i > 0 && v == nums[i - 1] {
                continue
            }
            var l = i + 1
            var r = nums.count - 1
            
            while l < r {
                let threeSum = v + nums[l] + nums[r]
                if threeSum == 0 {
                    result.append([v, nums[l], nums[r]])
                    l += 1
                    while l < r && nums[l - 1] == nums[l] {
                        l += 1
                    }
                } else if threeSum > 0 {
                    r -= 1
                } else {
                    l += 1
                }
            }
        }
        return result
    }
}