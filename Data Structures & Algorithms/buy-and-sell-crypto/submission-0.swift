class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = prices[0], profit = 0
        for price in prices {
            buy = min(price, buy)
            profit = max(profit, price - buy)
            
        }
        return profit
    }
}


