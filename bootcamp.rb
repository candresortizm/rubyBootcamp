require "./instructor"

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

#instructor3=Instructor.new("Ordoñez","Camilo",nil)
#puts "#{instructor3.last_name} #{instructor3.first_name}: #{instructor3.nickname}"
