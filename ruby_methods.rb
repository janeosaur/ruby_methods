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
    # counts[letter] = Hash.new(0)
    counts[letter] = 0 unless counts.include?(letter)
    counts[letter] += 1
  end
  counts
end

# puts letter_count("apple")

def mock_me input
  # get input from terminal
  puts "Enter a word"
  # input = gets.chomp
  # put it until users type quit or q
  # input2 = gets.chomp
  # until input2 == "q" || input2 == "quit"
  #   puts input
  # end
  while input = gets.chomp
    puts input
    break if gets.chomp == "quit"
  end
end

mock_me('jane')
