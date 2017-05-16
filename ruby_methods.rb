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

def print_contacts hash
  # takes in hash {name: phonenumber, name: phonenumber}
  # puts name, phonenumber for each contact
  hash.each do |name, phone|
    puts name, phone
  end
  # puts names = hash.keys.to_s
  # puts phone_number = hash.values.to_s
  # names.each do |i|
  #   "#{names}: #{phone_number}"
  # end
end

# print_contacts ({"jane" => "1234", "julie" => "4321"})




def multiply_by (number, array)
  #number and returns an array of numbers multiplied by that number.
  puts array.map! {|i| i * number}
  # array.map do |i|
  #   i * number
  # end
end

# multiply_by(2,[1,2,5])
# puts multiply_by(-1, [0, 1, 10])


def reverse_each array
  # reverses the words in array
  array.map do |word|
    word.reverse! #reverse-str didn't work?? 
  end
  # array.each do |word|
  #   word.reverse!
  # end
  array
end

puts reverse_each(['blue', 'whale'])

def get_responses array
  # array of string questions
  # return array of responses from console input
  array.map do |el|
    puts el
    gets.chomp
  end

  # array.each do |el|
  #   input = gets.chomp
  #   puts "#{el}: #{input}"
  # end
end

puts get_responses(['how are you', 'what is today'])

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

# puts is_palindrome?(24)
# puts is_palindrome?(424)
