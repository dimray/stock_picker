def stock_picker(prices)
  min = 0
  result = []
  prices.each do |numb|
    
    for i in prices.index(numb)..prices.length-1    
      if (numb - prices[i]) < min
        max = (numb - prices[i])
        result[0] = prices.index(numb)
        result[1] = prices.index(prices[i])
      end
    end
  end
  p result  
end

stock_picker([17,3,6,9,15,8,6,1,10])