def stock_picker(stocks)
  return_days = []
  max_val = 0
  index_of_array2 = 0
    stocks.each_with_index do |stock, index|
        (index_of_array2..(stocks.length - 1)).each do |stock2index|
            stock2iter = stocks[stock2index]
            if (stock2iter- stock) > max_val 
              max_val = (stock2iter - stock)
              return_days = [index, stock2index]
            end
        end
          index_of_array2 += 1
    end
    return_days
end

stock_array = [17,3,6,9,15,8,6,1,10]

p stock_picker(stock_array)