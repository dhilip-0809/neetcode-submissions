class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hashMap: [Int: Bool] = [:]
        for num in nums {
            if hashMap[num] == true {
                return true
            }
            hashMap[num] = true
        }
        return false
    }
}
