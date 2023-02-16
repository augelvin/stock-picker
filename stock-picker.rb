def stock_picker(prices)
  reversedSell = Array.new
  reversedPrices = prices.reverse
  reversedPrices.each do |reversedPrice|
    buy = Array.new
    prices.each do |price|
      if prices.index(price) < prices.index(reversedPrice)
        buy.push(reversedPrice - price)
      else
        buy.push(0)
      end
    end
    reversedSell.push(buy)
  end
  sell = reversedSell.reverse
  maxProfit = reversedSell.flatten.max
  sellDay = sell.flatten.index(maxProfit) / prices.length
  buyDay = sell[sellDay].index(maxProfit)
  [buyDay, sellDay]
  
end

p stock_picker([17,3,6,9,15,8,6,1,10])