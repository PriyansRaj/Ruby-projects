def stock_picker(arr)
  day_to_buy = 0
  day_to_sell = 0
  max_profit = 0

  for i in 0...(arr.length - 1)
    for j in (i + 1)...arr.length
      profit = arr[j] - arr[i]
      if profit > max_profit
        max_profit = profit
        day_to_buy = i
        day_to_sell = j
      end
    end
  end
  return [day_to_buy, day_to_sell]
end

def main
  print "Enter the stock prices separated by commas: "
  arr = gets.chomp.split(",").map(&:to_i)
  result = stock_picker(arr)
  puts result.inspect
end

main
