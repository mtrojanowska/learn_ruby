# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


    teacher1 = Teacher.find_or_create_by!(email: 'random1@example.com') do |teacher|
        teacher.first_name = Faker::Name.first_name
        teacher.last_name = Faker::Name.last_name
        teacher.password = 'dupablada1'
      end

    
      teacher2 = Teacher.find_or_create_by!(email: 'random2@example.com') do |teacher|
        teacher.first_name = Faker::Name.first_name
        teacher.last_name = Faker::Name.last_name
        teacher.password = 'dupablada2'
      end


    teacher3 = Teacher.find_or_create_by!(email: 'random3@example.com') do |teacher|
        teacher.first_name = Faker::Name.first_name
        teacher.last_name = Faker::Name.last_name
        teacher.password = 'dupablada3'
      end
    
    
    
