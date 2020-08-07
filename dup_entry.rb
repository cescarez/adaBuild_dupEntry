#Author: Christabel Escarez
#Last updated: August 4, 2020
#Ada Developer's Academy C14
#Ada Build: Section 3 Assessment: question  4, "Duplicate Entry"

#Functions
def check_input(user_input)
  while (user_input.to_i == 0 && user_input.to_s != "0")
    puts "Invalid input. Please re-enter a non-negative integer. Enter a negative integer to exit. "
    user_input = gets.chomp
  end
  if user_input_to.i < 0
    puts "Goodbye."
    exit
  end
  return user_input.to_i
end

#MAIN
puts "Hello! We are going to total some numbers!"
puts "Enter a negative number to quit."
total = 0

until input1 < 0
  until input1 == input2
    puts "Please enter a number."
    input1 = check_input(input1)
    puts "Please enter the number again to confirm entry."
    input2 = check_input(input2) 
    if input1 != input2
      puts "#{input1} does not match #{input2}, please try again."
    end
  end
  total += input1
  input1 = check_input(input1)
end

puts "Result: #{total}"
