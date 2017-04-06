#Finding the maximum profit for the stocks 

module Stock
  class MaxProfitCalculator
    def initialize(prices)
      raise IndexError, 'Not enough prices to compute' if prices.length < 2
      @prices = prices
    end

    def calculate
      min_price = @prices[0]
      max_profit = @prices[1] - @prices[0]

      @prices.each do |price, i|
        next if i == 0
        potential_profit = price - min_price
        max_profit = [potential_profit, max_profit].max
        min_price = [min_price, price].min
      end
      return max_profit
    end
  end
end

puts Stock::MaxProfitCalculator.new([17,3,6,9,15,8,6,1,10]).calculate