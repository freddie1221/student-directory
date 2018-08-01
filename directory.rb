def input_students

  # create an empty array
  possible_cohorts = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  students = []
  cohort = ""
  # get the first name
  while true do
    puts "Please enter the name of the student"
    name = gets.chomp
    if name == ""
      break
    end

    puts "Please enter the cohort of the student"
    while true do
      cohort = gets.chomp.capitalize.to_sym
      if possible_cohorts.include?(cohort.to_s)
        break
      else
        puts "Cohort not recognised, please input again"
      end
    end

    puts "please enter the age of the student"
    age = gets.chomp.to_i

    # add the student hash to the array
    students << {name: name, cohort: cohort, age: age}
    puts "Now we have #{students.count} students"
    puts "--------"

  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
