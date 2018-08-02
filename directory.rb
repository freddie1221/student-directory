
def cohort_getter
  possible_cohorts = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  puts "Please enter the cohort of the student"
  while true do
    cohort = gets.chomp.capitalize.to_sym
    if possible_cohorts.include?(cohort.to_s)
      break
    else
      puts "Cohort not recognised, please input again"
    end
  end
  cohort # Returning the spell checked cohort
end


def input_students # This will provide an array of students and their data
  students = []
  while true do
    puts "Please enter the name of the student"
    name = gets.chomp
    if name == ""
      break
    end
    puts "please enter the age of the student"
    age = gets.chomp.to_i

    # add the student hash to the array (we'll get the cohort in a second)
    students << {name: name, cohort: cohort_getter, age: age}
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
  puts "---------"
  puts "Overall, we have #{students.count} great students"
end

def print_by_cohort(students, cohort) # Passing in the students array
puts "Printing students in the #{cohort} cohort"
puts "---------"
  students.each do |student|
    if student[:cohort] == cohort.to_sym
      puts "#{student[:name]}, #{student[:age]}"
    end

  end
end

students = input_students # setting the variable students equal to the output of our method
#nothing happens until we call the methods
print_header
puts "Printing by cohort - input a cohort"
cohort_selection = gets.chomp.capitalize
print_by_cohort(students, cohort_selection)
print_footer(students)
