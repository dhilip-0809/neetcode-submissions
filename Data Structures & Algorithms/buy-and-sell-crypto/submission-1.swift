class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = prices[0], profit = 0
        for price in prices {
            if price < buy {
                buy = price
            }
            profit = max(profit, price - buy)
        }
        return profit
    }
}


