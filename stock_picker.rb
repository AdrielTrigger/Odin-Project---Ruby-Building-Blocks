days = 0
stock_prices = []

while (days < 10)
  stock_prices << rand(5..50)
  days += 1
end

def stock_picker (array)
  index1 = 0
  index2 = index1 + 1
  profit = 0

  while (index1 < array.length - 1)
    if (array[index1] < array[index2])
      while (index2 < array.length)
        new_profit = array[index2] - array[index1]
        if (new_profit > profit)
          low_day = index1
          high_day = index2
          profit = new_profit
        end
        index2 += 1
      end
    end
    index1 += 1
    index2 = index1 + 1
  end

  if (profit == 0)
    puts "No profit to be made"
  else
    puts "day to buy: #{low_day + 1}"
    puts "day to sell: #{high_day + 1}"
    puts "profit: #{profit}"
  end
end

stock_picker (stock_prices)