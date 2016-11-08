
def stock_picker(stock_prices)
	buy_window_prices = stock_prices.take(stock_prices.size - 1)
	sell_window_prices = stock_prices.drop(1)
	max_profit = 0
	for i in 0..(buy_window_prices.size - 1)
		buy_price = buy_window_prices[i]
   		for j in (i+1)..(sell_window_prices.size - 1)
   			sell_price = sell_window_prices[j]
   			profit = sell_price - buy_price
   			if(profit > max_profit)
   				max_profit = profit
   				day_to_buy = i
   				day_to_sell = j + 1
   			end
   		end
	end
	result = Array.new(3)
	result[0] = day_to_buy
	result[1] = day_to_sell
	result[2] = max_profit
	result
end
p stock_picker([17,3,6,9,15,8,6,20,10, 16])