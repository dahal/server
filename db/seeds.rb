puts 'Seeding Puru'
User.create(email: 'puru@dahal.me', password: 'password', state_enum: :active)

puts 'Seeding John'
User.create(email: 'johnakersemail@gmail.com', password: 'password', state_enum: :active)

# Seed 20 users
puts 'Seed 20 Users'
20.times do |n|
  User.create(email: "puru+#{n+1}@dahal.me", password: 'password', state_enum: %i(active inactive).sample)
end

#-----------------------------------

puts 'Seeding some surveys'

colors = %w(
#20575F #268073 #53A976
#423B35 #655C54 #8B7F74
#9E2C25 #C25140 #DD7961
#3E3E96 #6B60C0 #9B87DE
#40394E #694963 #965872
#643515 #8C561B #AF7D1E
#5E3C39 #875A5D
)

brands = %w(Twitter Facebook Linkedin Medium Github)
20.times do |n|
  Survey.create(
    brand_name:       Faker::Company.name,
    reply_to_email:   "puru+#{n+1}@pleased.io",
    survey_subject:   Faker::Company.catch_phrase,
    survey_body:      Faker::Lorem.paragraph(2),
    brand_color:      colors[n+1],
    brand_logo:       'http://placehold.it/400x100',
    user_id:          n+1
  )
end

puts 'Done !'
