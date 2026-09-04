class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        
        if s1.count > s2.count {
            return false
        }
        let a = Array(s1)
        let b = Array(s2)
        
        var aCount = Array(repeating: 0, count: 26)
        var bCount = Array(repeating: 0, count: 26)
        let common = Character("a").asciiValue!
        
        for c in a {
            let key = Int(c.asciiValue! - common)
            aCount[key] += 1
        }
        
        let windowSize = a.count
        
        for (right, c) in b.enumerated() {
            let key = Int(c.asciiValue! - common)
            bCount[key] += 1
            if right >= windowSize {
                let leftIndex = Int(b[right - windowSize].asciiValue! - Character("a").asciiValue!)
                bCount[leftIndex] -= 1
            }
            if aCount == bCount {
                return true
            }
        }

        return false
    }
}