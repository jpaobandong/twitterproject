User.create!(username: "eUser",
             name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  first  = Faker::Name.first_name
  last = Faker::Name.last_name
  username = last + "_" + first
  name  = first + " " + last
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(username: username,
               name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
