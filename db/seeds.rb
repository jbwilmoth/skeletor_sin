require 'faker'

User.delete_all

users = 500.times.map do
  User.create :first_name => Faker::Name.first_name,
              :last_name  => Faker::Name.last_name,
              :email      => Faker::Internet.email,
              :password   => "password", 
              :password_confirmation => "password",
              :birthdate  => Date.today - 15.years - rand(20000).days
end
