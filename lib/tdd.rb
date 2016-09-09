class Array

  def remove_dups
    self.uniq
  end

  def two_sum
    return_arr = []
    0.upto(length - 2).each do |i|
      (i + 1).upto(length - 1).each do |j|
        return_arr << [i,j] if self[i] + self[j] == 0
      end
    end
    return_arr
  end

end

def my_transpose(arr)
  return_arr = []
  arr.each_with_index do |row, i|
    new_row = []
    row.each_with_index do |col, j|
      new_row << arr[j][i]
    end
    return_arr << new_row
  end
  return_arr

  # i = 0
  # while i < arr.length
  #   j = 0
  #   sub_array = []
  #   while j < arr[0].length
  #     sub_array << arr[j][i]
  #     j += 1
  #   end
  #   return_arr << sub_array
  #   i += 1
  # end
  #
  # return_arr
end


def stock_picker(arr)
  # return_arr = []
  # biggest_difference = 0
  # 0.upto(arr.length - 2).each do |idx1|
  #   (idx1+1).upto(arr.length - 1).each do |idx2|
  #     buy_price = arr[idx1]
  #     sell_price = arr[idx2]
  #     puts "buy price: #{buy_price}, sell price: #{sell_price}. Current idx: #{idx1}, #{idx2}"
  #     if sell_price - buy_price > biggest_difference
  #       biggest_difference = sell_price - buy_price
  #       return_arr = [idx1, idx2]
  #     end
  #   end
  # end
  # return_arr

  return_arr = []
  comparision_arr = []
  low_idx = 0
  high_idx = 1
  while low_idx < arr.length - 1
    while high_idx < arr.length
      difference = arr[high_idx] - arr[low_idx]
      comparision_arr << [difference, [low_idx, high_idx]]
      high_idx += 1
    end
    low_idx += 1
    high_idx = low_idx + 1
  end
  comparision_arr.sort!
  comparision_arr.last.last
end
