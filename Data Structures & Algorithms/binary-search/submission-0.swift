class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, r = nums.count - 1
        
        for index in 0 ..< nums.count {
            
            let m = (l + r) / 2
            
            if target == nums[m] {
                return m
            } else if target > nums[m] {
                l = m + 1
            } else {
                r = m - 1
            }
        }
        return -1
    }
}