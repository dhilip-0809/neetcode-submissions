class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var hashMap: [Int: Int] = [:]
        for (i, v) in numbers.enumerated() {
            let needed = target - v
            if let anotherIndex = hashMap[needed] {
                return [anotherIndex + 1, i + 1]
            }
            hashMap[v] = i
        }
        return []
    }
}
