require 'faker'

users = 10.times.map do
  User.create!( :first_name => Faker::Name.first_name,
                :last_name  => Faker::Name.last_name,
                :username => Faker::Internet.user_name,
                :email      => Faker::Internet.email,
                :password   => 'password' )
end

10.times do
  post = Question.create(title: Faker::Hipster.sentence, body: Faker::Hipster.paragraph(1), user_id: rand(1..10))
  5.times { post.answers.create(body: Faker::Hipster.sentence(2), user_id: rand(1..10)) }
   post.answers.each { |answer| answer.comments.create(body: Faker::Hipster.sentence(2), user_id: rand(1..10)) }
end
