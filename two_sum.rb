def bad_two_sum?(arr, target)
  arr.each.with_index do |el1, i1|
    arr.each.with_index do |el2, i2|
      return true if i1 != i2 && (el1 + el2 == target)
    end
  end
  false
end


# arr = [0, 1, 5, 7]
# puts bad_two_sum?(arr, 6) # => should be true
# puts bad_two_sum?(arr, 10) # => should be false
# #time complexity => O(n^2)

def okay_two_sum?(arr, target)
  arr.sort.each do |el|
    return true if arr.bsearch { |x| x == target - el }
  end
  false
end

# arr = [5, 1, 0, 7]
# puts bad_two_sum?(arr, 6) # => should be true
# puts bad_two_sum?(arr, 10) # => should be false
# #time complexity => O(n log n)

def pair_sum?(arr, target)
  hash = Hash.new
  arr.each { |el| hash[el] = target - el }
  hash.each do |key, val|
    return true if hash.key?(val) && key != val
  end
  false
end

arr = [5, 1, 0, 7]
puts pair_sum?(arr, 6) # => should be true
puts pair_sum?(arr, 10) # => should be false

# time complexity => O(n)
