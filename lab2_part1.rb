#Part1: Hello World
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

