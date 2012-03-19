namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do        
    admin = User.create!(name: "Kirby Doss",
                 email: "kirbydoss@gmail.com",
                 password: "hilda1",
                 password_confirmation: "hilda1")
    admin.toggle!(:admin)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@exampleuser.org"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end