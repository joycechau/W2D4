def bad_my_min(list)
  min_el = nil
  list.each do |el1|
    min_el = el1
    list.each do |el2|
      min_el = el2 if el2 < min_el
    end
  end

  min_el
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# puts bad_my_min(list)  # =>  -5
# time complexity => O(n^2)

def good_my_min(list)
  min_el = nil
  list.each do |el1|
    min_el = el1 if min_el.nil? || el1 < min_el
  end

  min_el
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# puts good_my_min(list)  # =>  -5
# time complexity => O(n)

def bad_subsum(list)
  subsets = []
  list.each_index do |idx1|
    list.each_index do |idx2|
      subsets << list[idx1..idx2]
    end
  end
  subsets.select! { |arr| arr.length > 0 }
  subsets.uniq.map do |subset|
    subset.inject(:+)
  end.max
end

list = [2, 3, -6, 7, -6, 7]
#puts bad_subsum(list) # => 8 (from [7, -6, 7])
# time complexity => O(n^3)

def good_subsum(list)
  max_sum = 0
  cur_sum = 0
  list.each do |el|
    cur_sum += el
    max_sum = cur_sum if max_sum < cur_sum
    cur_sum = 0 if cur_sum < 0
  end

  max_sum
end

list = [2, 3, -6, 7, -6, 7]
puts good_subsum(list) # => 8 (from [7, -6, 7])
# time complexity => O(n)
