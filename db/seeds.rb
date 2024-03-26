# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Create a User
user = User.create(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

# Create Projects
10.times do
  Project.create(
    name: Faker::Lorem.sentence(word_count: 3),
    image: "https://images.unsplash.com/photo-1711299253442-de19d4dacaae?q=80&w=2950&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  )
end

user = User.first
Project.all.each do |project|
  UserProject.create(
    user_id: user.id,
    project_id: project.id,
    progress: rand(0.0..1.0)
  )
end

