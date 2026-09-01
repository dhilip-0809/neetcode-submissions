class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var l = 0, r = heights.count - 1, res = 0
        while l < r {
            let height = min(heights[l], heights[r])
            let width = r - l
            let area = width * height
            res = max(res, area)
            if heights[l] < heights[r] {
                l += 1
            } else {
                r -= 1
            }
        }
        return res
    }
}
