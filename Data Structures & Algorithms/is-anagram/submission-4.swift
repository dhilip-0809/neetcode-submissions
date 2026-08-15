class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var hashMap: [Character: Int] = [:]

        if s.count != t.count {
            return false
        }
        for c in s {
            hashMap[c, default: 0] += 1
        }

        for c in t {
            if let count = hashMap[c], count > 0 {
                hashMap[c] = count - 1
            } else {
                return false
            }
        }
        return true
    }
}
