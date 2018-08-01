def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp.capitalize
  puts "Now please enter the cohort"
  cohort = gets.chomp.to_sym
  # while the name is not empty, repeat this code
  until name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp.capitalize
    puts "Now please enter the cohort"
    cohort = gets.chomp.to_sym
  end
  # return the array of students
  students
end


def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_array(array)
  print array
end


def print_formatted(students)
  counter = 0
  until students[counter] == nil do
    puts "#{counter + 1}. #{students[counter][:name].center(15)} (#{students[counter][:cohort]} cohort)"
    counter += 1
  end
end


def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print_array(students)
# print_formatted(students)
# print_footer(students)
