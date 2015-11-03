def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} + #{b}"
  return a - b
end 

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "Here is a puzzle."

# what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

# puzzle time

# what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
# => (30 + 5) + (78 - 4) - (90 * 2) * (100 / 2) / 2
# => (35) + (74) - (180) * (50) / 2
# => 35 + 74 - (9000) / 2
# => 35 + 74 - 4500
# => 109 - 4500
# => - 4391

# 2) Re-writing the formula into functions

what = age + height - weight * iq / 2

puts "Here is the answer: #{what}"

# 3) Changing the functions to produce a different number

#puts "Here is a different number!"

#age = add(35, 7.4)
#height = subtract(70, 29)
#weight = multiply(190, 2)
#iq = divide(10, 2)

#what = age + height - weight * iq / 2

#puts "Here is a different number: #{what}"

# Start with a simple formula and create functions for it

touchdowns = add(1, 4)
points = multiply(1, 7)
opponent = divide(3, 7)
caliber = subtract(10, 1)

football = touchdowns + points * opponent / caliber

puts "This is football in math: #{football}"