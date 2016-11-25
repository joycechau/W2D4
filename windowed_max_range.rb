def bad_windowed_max_range(array, size)
  current_max_range = nil
  array.each_with_index do |el, idx|
    next unless array[idx + size - 1]
    window = array[idx...(idx + size)]
    if current_max_range.nil? || window.max - window.min > current_max_range
      current_max_range = window.max - window.min
    end
  end
  current_max_range
end

puts bad_windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
puts bad_windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
puts bad_windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
puts bad_windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
# time complexity => O(n^3)



def good_windowed_max_range(array, size)

end
# puts good_windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# puts good_windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# puts good_windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
# puts good_windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
