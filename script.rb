def stock_picker(array)
    profit_arr = Array.new(array.length){[]} #create nested array where every day gets its own array
    max_profit = 0
    best_days = []
    array.each_with_index do |to_sell, sell_ind| #use nested each loop to populate profit_arr with profits would be for 
        array.each_with_index do |to_buy, buy_ind|#buying/selling each individual number
            if buy_ind > sell_ind
                profit = (-to_sell + to_buy)
                if profit > max_profit              #get the maximum profit, and set best_days to its location in nested array
                    max_profit = profit
                    best_days = [sell_ind, buy_ind]
                end
                profit_arr[sell_ind].push(profit)
            end
        end
    end
end
puts stock_picker([17,3,6,9,15,8,6,1,10])