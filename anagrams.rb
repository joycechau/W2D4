def first_anagram?(string1, string2)
  string1.chars.permutation.any? { |el| el == string2.chars }
end

# puts first_anagram?("gizmo", "sally")    #=> false
# puts first_anagram?("elvis", "lives")    #=> true
#time complexity => O(n!)

def second_anagram?(string1, string2)
  s1_letters = string1.chars
  s2_letters = string2.chars
  idx2 = 0
  until s1_letters.empty?
    while idx2 < s2_letters.length
      if s1_letters[0] == s2_letters[idx2]
        s2_letters.delete_at(idx2)
      end
      idx2 += 1
    end
    idx2 = 0
    s1_letters.delete_at(0)
  end

  return true if s1_letters.empty? && s2_letters.empty?
  false
end

# puts second_anagram?("gizmo", "sally")    #=> false
# puts second_anagram?("elvis", "lives")    #=> true
# # time complexity => O(n^2)

def third_anagram?(string1, string2)
  string1.chars.sort == string2.chars.sort
end

# puts third_anagram?("gizmo", "sally")    #=> false
# puts third_anagram?("elvis", "lives")    #=> true
# # time complexity => O(nlogn)


def fourth_anagram?(string1, string2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  string1.chars.each { |el| hash1[el] += 1 }
  string2.chars.each { |el| hash2[el] += 1 }
  hash1 == hash2
end

puts fourth_anagram?("gizmo", "sally")    #=> false
puts fourth_anagram?("elvis", "lives")    #=> true
# time complexity => O(n)
