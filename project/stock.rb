def stock_picker(prices)
  return [] if prices.length < 2
  
  best_days = []
  max_profit = 0

  prices.each_with_index do |price, buy_day|
    (buy_day + 1...prices.length).each do |sell_day|
      profit = prices[sell_day] - price
      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end
  
  best_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10]).inspect 
