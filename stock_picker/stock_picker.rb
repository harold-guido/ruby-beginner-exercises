def stock_picker(price_array)
    day_price = {}
    price_array.each_index { |i| day_price[i] = {}}
    day_price.each do |key, value|
        key.upto(price_array.length - 1) {|i| day_price[key][i] = price_array[i] - price_array[key]}
        day_price[key] = greatest_profit(day_price[key])
    end 
    greatest_profit_day_pair(day_price)
end

def greatest_profit(hash)
    hash.max_by {|key, value| value}
end

def greatest_profit_day_pair(hash)
    greatest_profit = hash.max_by {|key, value| value[1]}
    day_pair = [greatest_profit[0], greatest_profit[1][0]]
    day_pair
end