# collaborator: ulieJay

# def p_times statement, num
#   puts statement*num
# end

def p_times statement,num
  num.times do |i|
    puts statment
end

p_times('hello', 5)

def letter_count word
  counts = Hash.new 0
  word.split("")
  word.each do |letter|
    counts[letter] += 1
  end
end

puts letter_count("apple")
