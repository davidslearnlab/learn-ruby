# This file covers all major Ruby concepts with examples and comments.

# ----------------------------
# 1. VARIABLES & DATA TYPES
# ----------------------------
name = "Ruby"               # String
age = 30                    # Integer
price = 19.99               # Float
active = true               # Boolean
nothing = nil               # nil (null equivalent)

puts "Hello, #{name}! You are #{age} years old."

# ----------------------------
# 2. CONSTANTS
# ----------------------------
PI = 3.14159
puts "PI is #{PI}"

# ----------------------------
# 3. ARRAYS
# ----------------------------
numbers = [1, 2, 3, 4, 5]
puts numbers[0]          # First element
numbers.push(6)
numbers.each { |num| puts num }  # Iteration

# ----------------------------
# 4. HASHES (DICTIONARIES)
# ----------------------------
person = {
  name: "Alice",
  age: 25,
  city: "Yerevan"
}
puts person[:name]

# ----------------------------
# 5. CONDITIONALS
# ----------------------------
if age > 18
  puts "Adult"
elsif age == 18
  puts "Just became an adult"
else
  puts "Minor"
end

# ----------------------------
# 6. LOOPS
# ----------------------------
# while loop
i = 0
while i < 3
  puts "i = #{i}"
  i += 1
end

# for loop
for n in 1..3
  puts "n = #{n}"
end

# times loop
3.times do |n|
  puts "n using times: #{n}"
end

# ----------------------------
# 7. METHODS
# ----------------------------
def greet(name = "Guest")
  "Hello, #{name}!"
end

puts greet("David")
puts greet

# ----------------------------
# 8. CLASSES & OBJECTS
# ----------------------------
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} makes a noise."
  end
end

dog = Animal.new("Dog")
puts dog.speak

# ----------------------------
# 9. INHERITANCE
# ----------------------------
class Dog < Animal
  def speak
    "#{@name} barks!"
  end
end

beagle = Dog.new("Beagle")
puts beagle.speak

# ----------------------------
# 10. MODULES (Mixins)
# ----------------------------
module Walkable
  def walk
    "#{@name} is walking."
  end
end

class Person
  include Walkable
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

john = Person.new("John")
puts john.walk

# ----------------------------
# 11. BLOCKS, PROCS, LAMBDAS
# ----------------------------
def do_twice
  yield
  yield
end

do_twice { puts "Hello from block!" }

say = Proc.new { puts "Proc says hi!" }
say.call

add = ->(a, b) { a + b }
puts add.call(2, 3)

# ----------------------------
# 12. FILE I/O
# ----------------------------
File.open("sample.txt", "w") { |file| file.puts "Hello from Ruby!" }
puts File.read("sample.txt")

# ----------------------------
# 13. EXCEPTION HANDLING
# ----------------------------
begin
  10 / 0
rescue ZeroDivisionError => e
  puts "Error: #{e.message}"
ensure
  puts "This always runs."
end

# ----------------------------
# 14. SYMBOLS
# ----------------------------
sym = :ruby
puts sym.object_id
puts :ruby.object_id  # same object_id as sym

# ----------------------------
# 15. ENUMERABLE METHODS
# ----------------------------
arr = [1, 2, 3, 4, 5]
squared = arr.map { |x| x * x }
evens = arr.select { |x| x.even? }
sum = arr.reduce(:+)

puts "Squared: #{squared}"
puts "Evens: #{evens}"
puts "Sum: #{sum}"

# ----------------------------
# 16. RANGES
# ----------------------------
(1..5).each { |n| puts "Range includes #{n}" }

# ----------------------------
# 17. STRING MANIPULATION
# ----------------------------
str = "  hello world  "
puts str.strip.upcase.reverse

# ----------------------------
# 18. REGULAR EXPRESSIONS
# ----------------------------
email = "test@example.com"
if email =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  puts "Valid email"
end

# ----------------------------
# 19. COMMAND LINE ARGUMENTS
# ----------------------------
puts "ARGV: #{ARGV}"  # Run with: ruby ruby_concepts.rb one two

# ----------------------------
# 20. GEMS AND LIBRARIES
# ----------------------------
# Run `gem install colorize` before using this
# require 'colorize'
# puts "This is red!".colorize(:red)

# ----------------------------
# END OF RUBY CONCEPTS
# ----------------------------