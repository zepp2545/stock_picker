prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)

    profits = prices.each_with_index.reduce({}) do |profit, (price, index)|
        if index < prices.size-1

            (prices.size-(index+1)).times do |k|
                deduction = prices[index+k+1]-price
                days = [index, index+k+1]
                profit[deduction] = days
            end

            profit
        else
            profit
        end
        
    end

    p profits.max[1]
end

stock_picker(prices)