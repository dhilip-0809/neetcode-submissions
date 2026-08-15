class Solution {

    func encode(_ strs: [String]) -> String {
        var res = ""
        for str in strs {
            res += "\(str.count)" + "#" + str
        }
        return res
    }

    func decode(_ str: String) -> [String] {
        let chars = Array(str)
        var i = 0
        var res: [String] = []
        while i < chars.count {

            var lenStr = ""
            while chars[i] != "#" {
                lenStr.append(chars[i])
                i += 1
            }
            var len = Int(lenStr)!
            // skip #
            i += 1
            var r = ""
            for _ in 0 ..< len {
                r.append(chars[i])
                i += 1
            }
            res.append(r)
        }
        return res
    }
}
