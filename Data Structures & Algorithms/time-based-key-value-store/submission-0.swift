class TimeMap {

    var map: [String: [(time: Int, value: String)]]

    init() {
        map = [:]
    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        map[key, default: []].append((time: timestamp, value: value))
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        guard let values = map[key] else {
            return ""
        }
        var ans = ""
        var l = 0
        var r = values.count - 1
        while l <= r {
            let m = (r + l) / 2
            if values[m].time <= timestamp {
                ans = values[m].value
                l = m + 1
            } else {
                r = m - 1
            }
        }
        return ans
    }
}
