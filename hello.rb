=begin
    This is a learning record.
    by monar
=end


puts "Hello world"

puts "Hello Ruby"

####################################
# 1. variables
####################################

# local variables
time = 20
_time = 20

# @time = 20 instance variables
# @@time class variables

# global variables
$time = 200

####################################
# 2. data type
####################################

# Numeric
# String
# Symbol
# Boolean
# Array
# Hash

####################################
# 3. condition
####################################

## if
condition_a = 6

if (condition_a > 5)
    puts condition_a
end

if condition_a > 5 then puts condition_a end

puts condition_a if condition_a > 5

## unless
condition_b = 7

puts condition_b unless condition_b < 5

## 
condition_b < 5 ? puts(condition_b) : puts("No")

## if-else
name = "Monar"

if name == "Jack"
    puts "My name is #{name}"
elsif name == "Rose"
    puts "My name is #{name}, I love Jack."
else
    puts "Who am I?"
end

## switch
case name
when "Jack" then puts "My name is #{name}"
when "Rose" then puts "My name is #{name}, I love Jack."
else puts "Who am I?"
end

####################################
# 4. loop
####################################

## for
for x in [1, 2, 3] do
    puts x
end

## while
i = 5
while i > 0 
    puts i
    i -= 1
end

## until
i = 5
until i <= 0
    puts i
    i -= 2
end

## loop
loop do
    puts "endless"
    break
end

# break
# next
# redo
# retry

####################################
# 5. method
####################################

def plus(x, y)
    z = x + y
    return z
end

puts plus(3, 4)

##

def minus x,y
  x - y
end

puts minus(3, 4)

## block

def block_test
    yield
end

block_test {puts "Monar"}

####################################
# 6. clss
####################################

class Bird
    attr_accessor :name, :sex
    def initialize name
        @name = name
    end

    def self.fly
        puts "bird can fly"
    end

    def say
        puts "i am #{@name}"
    end
end

bird = Bird.new("didi")
bird.sex = "male"
Bird.fly
bird.say

## extends
class LittleBird < Bird
    def initialize name
        super(name)
    end
end

# attr_reader :name
# attr_writer :sex

## module

module Eat
  def eat
    puts "i can eat"
  end
end

module Sleep
  def sleep
    puts "i can sleep"
  end
end

class Pig
  include Eat
  include Sleep
end

Pig.new.eat
Pig.new.sleep
    
## module constants

# module Math
#   PI = 3.14
# end

# Math::PI

## namespace

module Foo
  module Bar
    def self.say
      p "Hi"
    end
  end
end

Foo::Bar.say

