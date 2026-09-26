class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var l = 1
        var r = findMax(nums: piles)
        while l <= r {
            let mid = (l + r) / 2
            let sol = findHours(piles: piles, hourly: mid)
            if sol <= h {
                r = mid - 1
            } else {
                l = mid + 1
            }
        }
        return l
    }
    
    func findMax(nums: [Int]) -> Int {
        var m = 0
        for num in nums {
            if num > m {
                m = num
            }
        }
        return m
    }
    
    func findHours(piles: [Int], hourly: Int) -> Int {
        var total = 0
        for pile in piles {
            let hoursForPile = ceil(Double(pile) / Double(hourly))
            total += Int(hoursForPile)
        }
        return total
    }
}
