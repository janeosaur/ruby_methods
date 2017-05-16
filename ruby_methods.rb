# collaborator: ulieJay

# def p_times statement, num
#   puts statement*num
# end

def p_times statement,num
  num.times do |i|
    puts statement
  end
end

# p_times('hello', 5)

def letter_count word
  word_array = word.split("")
  counts = {}
  word_array.each do |letter|
    counts[letter] = 0 unless counts.include?(letter)
    # if counts.has_key? letter
    #   counts[letter] += 1
    # else
    #   counts[letter] = 1
    # end
    counts[letter] += 1
  end
  counts
end

# puts letter_count("apple")

def mock_me
  # get input from terminal
  puts "Enter a word"
  while true do
    input = gets.chomp
    if input == 'quit' || input == 'q'
      break
    else
      puts input
    end
  end
end

  # put it until users type quit or q
  # input2 = gets.chomp
  # until input2 == "q" || input2 == "quit"
  #   puts input
  # end
  # while input = gets.chomp
  #   puts input
  #   break if gets.chomp == "quit"
  # end
# end

# mock_me

def multiply_by (number, array)
  #number and returns an array of numbers multiplied by that number.
  puts array.map! {|i| i * number}
  # array.map do |i|
  #   i * number
  # end
end

# multiply_by(2,[1,2,5])
# puts multiply_by(-1, [0, 1, 10])

def factorial (number)
  # recursive
  if number > 2
    number * factorial(number-1) #error when i put puts here
  else
    1
  end
end

# puts factorial 4
# factorial(5)

def is_palindrome? (number)
  num_to_string = number.to_s
  num_to_string == num_to_string.reverse
end

puts is_palindrome?(24)
puts is_palindrome?(424)
