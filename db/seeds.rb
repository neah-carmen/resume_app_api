# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{email: 'dan@email.com', password: 'password'}])
User.create([{email: 'neah@email.com', password: 'password'}])
User.create([{email: 'diana@email.com', password: 'password'}])
User.create([{email: 'lilly@email.com', password: 'password'}])

Education.create!({university_name: 'Actualize'})
Education.create!({university_name: 'IIT'})


Experience.create!({company_name: 'Google'})
Experience.create!({company_name: 'Amazon'})
Experience.create!({company_name: 'Microsoft'})

Skill.create!({skill_name: 'Ruby'})
Skill.create!({skill_name: 'Rails'})
Skill.create!({skill_name: 'Javascript'})
Skill.create!({skill_name: 'VueJS'})

UserSkill.create!({user_id: 1, skill_id: 1})
UserSkill.create!({user_id: 1, skill_id: 2})
UserSkill.create!({user_id: 1, skill_id: 3})
UserSkill.create!({user_id: 1, skill_id: 4})

Capstone.create!({name: 'My Super Cool Capstone'})
Capstone.create!({name: 'My Super Cool Capstone'})
Capstone.create!({name: 'My Super Cool Capstone'})
Capstone.create!({name: 'My Super Cool Capstone'})
