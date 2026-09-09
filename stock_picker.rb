def stock_picker(prices)
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |buy_price, buy_index|
    prices[buy_index..-1].each_with_index do |sell_price, sell_index|
      actual_sell_index = buy_index + sell_index
      
      profit = sell_price - buy_price

      if profit > max_profit
        max_profit = profit
        best_days = [buy_index, actual_sell_index]
      end
    end
  end

  best_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4]
# for a profit of $15 - $3 == $12
