# frozen_string_literal= true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db=seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

   
    teachers = Teacher.create!( 
                  [ {     
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: 'random@example.com', 
        password: 'dupablada'},
                       {      
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: 'random1@example.com', 
        password: 'dupablada1'},
                            {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: 'random3@example.com', 
        password: 'dupablada3'}]
                            ).find_or_create_by!(email: teacher[:email])
    
    
    
