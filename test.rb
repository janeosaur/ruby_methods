# def count_chars string
#   puts string.length
# end
#
# count_chars('string')
#
# def count_chars string
#   string.length
# end

# puts count_chars = 'string'

# a = "abc"
# b = "abc."
#
# def add_period string
#   if string[-1] == "."
#     puts string
#   else
#     puts "#{string}."
#   end
# end

# def add_period word
#   if !word.end_with?('.') && !word.empty?
#     word += '.' # "#{word}."
#   end
#   word
# end
#

# def add_period word
#   !word.end_with?('.') && !word.empty? ? "#{word}." : word
# end
#
# puts add_period("abc")
# puts add_period("abc.")
#
# def ends_with_period string
#   # string.count(".") > 0 ? true : false
#   # string.end_with?(".") ? true : false
#   string.end_with?(".")
# end
#
# puts ends_with_period(".")
# puts ends_with_period("hello")
# puts ends_with_period("testing.")
# puts ends_with_period("j.ane aaaa")
#
# def convert_to_pig_latin word
#   first_letter = word[0]
#   if word == word.upcase
#     word.slice!(0,1)
#     "#{word}#{first_letter}ay".upcase!
#   elsif first_letter == first_letter.upcase
#     word.slice!(0,1)
#     "#{word}#{first_letter}ay".capitalize
#   else first_letter == first_letter.downcase
#     word.slice!(0,1)
#     "#{word}#{first_letter}ay"
#   end
# end
#
# puts convert_to_pig_latin("Julie")
# puts convert_to_pig_latin("Will")
# puts convert_to_pig_latin("ADDY")
# puts convert_to_pig_latin("will")
# def is_vowel? (letter, y_counts_as_vowel=false)
#   if y_counts_as_vowel
#     letter =~/[aeiouyAEIOUY]/ ? true: false
#     # letter.scan(Regexp.union(/a/, /e/, /i/, /o/, /u/, /y/)).length > 0 ? true : false
#   end
#     letter =~/[aeiouAEIOU]/ ? true: false
#   # letter.scan(Regexp.union(/a/, /e/, /i/, /o/, /u/)).length > 0 ? true : false
# end
#
# puts is_vowel?("a")
# puts is_vowel?("d")
# puts is_vowel?("y", false)
# puts is_vowel?("y", true)

# def recurse(depth)
#   if depth > 0
#     puts "Spiraling down...#{depth}"
#     recurse(depth - 1)
#     puts "Spiraling up...#{depth}"
#   else
#     puts "Bottom of the rabbit hole"
#   end
# end
#
# # recurse(5)
# recurse 5

# def process_number(n=3)
#   p 'processing your number'
#   yield(n)
#   # puts n #only prints out first number
#   p 'all done!'
# end
#
# process_number 5 do |i|
#   p (0..i).to_a #prints 0 to 5 (i) into an array
# end
#
#
# process_number do |k|
#   p k * 2 #prints default (n=3)*2 = 6
#   # p (0..k*2).to_a
# end

# def implicitly_return_5
#   2.times do
#     if true
#       # 5
#       puts 5
#     end
#   end
# end
#
# puts implicitly_return_5

foo = 1
#
# def do_stuff
#   foo = 1
#   foo += 1
#   bar = 1
#   puts foo
#   puts bar
# end

# do_stuff # 2 1

# puts foo #1
# puts bar #error
#
def do_stuff2(x)
  foo = x
  foo += 1
  bar = 1
  puts foo
  puts bar
end

# puts do_stuff2(foo)
