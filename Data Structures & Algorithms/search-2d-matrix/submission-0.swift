class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let n = matrix.count
        let m = matrix[0].count
        
        var l = 0, r = n * m - 1
        
        while l <= r {
            let mid = (l + r) / 2
            let row = mid / m
            let col = mid % m
            
            if target == matrix[row][col] {
                return true
            } else if matrix[row][col] < target {
                l = mid + 1
            } else {
                r = mid - 1
            }
        }
        return false
    }
}
