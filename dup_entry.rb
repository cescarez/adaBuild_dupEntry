#Author: Christabel Escarez
#Last updated: August 4, 2020
#Ada Developer's Academy C14
#Ada Build: Section 3 Assessment: question  4, "Duplicate Entry"

#Functions
def check_input(user_input)
  user_input = gets.chomp
  while (user_input.to_i == 0 && user_input.to_s != "0")
    puts "Invalid input. Please re-enter a non-negative integer. Enter a negative integer to exit. "
    user_input = gets.chomp
  end
  if user_input.to_i < 0
    puts "Goodbye."
    exit
  end
  return user_input.to_i
end

#MAIN
puts "Hello! We are going to total some numbers!"
total, number1, number2 = [0] * 3

while (number1 >= 0 && number2 >= 0) 
  number2 = number1 + 1 #offset number1 and number2 to enter below loop
  until number1 == number2
    puts "Please enter a number. Enter a negative number to quit."
    number1 = check_input(number1)
    puts "Please enter the number again to confirm entry."
    number2 = check_input(number2) 
    if number1 != number2
      puts "#{number1} does not match #{number2}, please try again."
    end
  total += number1
  puts "the current total is #{total}"
  end
end

puts "Result: #{total}"
