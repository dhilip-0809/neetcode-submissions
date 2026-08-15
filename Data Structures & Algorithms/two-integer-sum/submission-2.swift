class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int : Int]()
        for (i, v) in nums.enumerated() {
            let needed = target - v
            if let need = hashMap[needed] {
                return [need, i]
            } 
            hashMap[v] = i
        }
        return []
    }
}
