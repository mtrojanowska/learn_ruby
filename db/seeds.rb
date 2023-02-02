# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

emails = ['random1@gmail.com', 'random2@gmail.com', 'random3@gmail.com']
3.times do
teachers = Teacher.find_or_create_by!(email: emails.shift ) do |teacher|
    teacher.first_name = Faker::Name.first_name
    teacher.last_name = Faker::Name.last_name
    teacher.password = 'dupablada'
  end
end
    
    
