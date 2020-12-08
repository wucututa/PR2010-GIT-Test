


#2

color = 'red'
def method1
	color = 192
	puts("Color Value in method1:", color)
end

def method2
	color= 255
	puts("Color Value method2", color)
end

method1
method2
puts("Color Value outside method: "+ color)

#3
class Student
	def initialize student_id, student_name
		@student_id = student_id
		@student_name = student_name
	end

	def show
		puts "Student Name and ID: "
		puts @student_id, @student_name
	end
end

Student.new(1,"Sara").show
Student.new(2,"Raju").show

#4

class School
	@@no_off_student=650
end

class V < School
	@@no_off_student=75
end

class VI < School
	@@no_off_student=80
end

puts School.class_eval("@@no_off_student")
puts V.class_eval("@@no_off_student")
puts VI.class_eval("@@no_off_student")

#1

$global = 0

class C
  puts "in a class: #{$global}"

  def my_method
    puts "in a method: #{$global}"

    $global = $global + 1
    $other_global = 3
  end
end

C.new.my_method

puts "at top-level, $global: #{$global}, $other_global: #{$other_global}"
