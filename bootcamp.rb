require "./student"
require "./instructor"
require "./lesson"

=begin
instructor1=Instructor.new({
  first_name:"Florez",
  last_name:"Diego",
  nickname:"Wepaaa!",
  strength:"HTML, JS, CSS"
})
puts "#{instructor1.last_name} #{instructor1.first_name}: #{instructor1.nickname} #{instructor1.claim_your_strength}"

instructor2=Instructor.new({
  first_name:"Gomez",
  last_name:"Jorge",
  nickname:"Yonga",
  strength:"RoR"
  })
puts "#{instructor2.last_name} #{instructor2.first_name}: #{instructor2.nickname} #{instructor2.claim_your_strength}"

student1=Student.new({
  first_name:"Ruben",
  last_name:"Avila",
  age:20
  })
puts "#{student1.last_name} #{student1.first_name}: #{student1.claim_your_age}"
=end

@lessons = []
@instructors =[]

def create_lesson(subject,instructor)
  @lessons << Lesson.new({
      subject:subject,
      instructor:instructor
  })
end

def create_instructor(params)
  @instructors << Instructor.new(params)
end

def find_instructor(nickname)
  @instructors.each do |i|
    return i if i.nickname == nickname
  end
end

def print_instructors
  @instructors.each_with_index do |i,index|
    puts "#{index}. #{i.first_name}: #{i.claim_your_strength}"
  end
end

def print_lessons
  @lessons.each_with_index do |l,index|
    puts "Lesson number: #{index} => #{l.subject}"
    puts "Lesson instructor: #{l.instructor.nickname}"
  end
end

begin
  puts "WELCOME TO RUBY BOOTCAMP PROGRAM"
  puts "1. Create a new Instructor"
  puts "2. Create a new Lesson"
  puts "10. Print lessons"
  puts "11. Print Instructors"
  @user_input = gets.chomp.downcase
  case @user_input
    when "1"
      instructor_params={}
      puts "Please type the first name of the instructor"
      instructor_params[:first_name] = gets.chomp.downcase
      puts "Please type the last name of the instructor"
      instructor_params[:last_name] = gets.chomp.downcase
      puts "Please type the nickname of the instructor"
      instructor_params[:nickname] = gets.chomp.downcase
      puts "Please type the strength of the instructor"
      instructor_params[:strength] = gets.chomp.downcase
      puts "Please type the age of the instructor"
      instructor_params[:age] = gets.chomp
      create_instructor instructor_params
    when "2"
      if @instructors.any?
        puts "Please type the subject of the lesson"
        subject = gets.chomp.downcase
        puts "Please select the instructor(type the index)"
        print_instructors
        instructor_index = gets.chomp.to_i
        create_lesson subject, @instructors[instructor_index]
      else
        puts "Must exist at least one instructor so you can create a lesson"
      end
    when "10"
      print_lessons
    when "11"
      print_instructors
  end
end while @user_input!="exit"
#instructor3=Instructor.new("Ordoñez","Camilo",nil)
#puts "#{instructor3.last_name} #{instructor3.first_name}: #{instructor3.nickname}"
