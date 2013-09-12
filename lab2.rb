# Part1: Hello World
class HelloWorldClass
  def initialize(name)
   @name = name.capitalize
 end
 def sayHi
  puts "Hello #{@name}!"
end
end

hello = HelloWorldClass.new("Cliff")
hello.sayHi

#Part2:
def palindrome?(myString)
  orig = myString
  myString = myString.downcase.delete("^a-zA-Z0-9")
  temp = myString.reverse
  if temp == myString
    puts "'#{orig}' is a palindrome!"
  else
    puts "'#{orig}' is not a palindrome!"
  end
end

def count_words(string)
  words = string.gsub /\W+/, ' '
  words = words.split(' ')
  frequency = Hash.new(0)
  words.each { |word| frequency[word.downcase] += 1 }
  puts frequency
end

palindrome?("A man, a plan, a canal -- Panama")
palindrome?("Madam, I'm Adam!")
palindrome?("Abracadabra")
count_words("A man, a plan, a canal -- Panama")
count_words "Doo bee doo bee doo"

#Part 3:

class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_tournament_winner(tournament)
  raise WrongNumberOfPlayersError unless game.length == 2
    # Check if we're at a game
    if tournament[0][0].is_a?(String)
      return rps_game_winner(tournament)
    end

    return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
  end

#Part 4:
class NoElementsInArrayError < StandardError ; end

def combine_anagrams(words)
  raise NoElementsInArrayError unless words.length > 0

  h = Hash.new
  words.each_index do |x|
    sorted_word = words.at(x).downcase.chars.sort.join  # ==> [acrs, for, aeoopstt, acrs, foru, acrs, acemrs, acemrs]
    unless h.has_key?(sorted_word)                      # creates an empty new array as value for key "acrs", "for" and so on...
      h[sorted_word] = Array.new()
    end

  h.fetch(sorted_word).push(words.at(x))              # populates the array for key "acrs", "for" and so on...
end

result = Array.new
h.each_value {|value| result.push(value) }
puts result

end

combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])






