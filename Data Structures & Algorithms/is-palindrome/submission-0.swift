class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let arr = Array(s)
        var str = ""
        for ch in arr {
            if ch.isNumber || ch.isLetter {
                str.append(ch.lowercased())
            }
        }
        return str == String(str.reversed())
    }
}
