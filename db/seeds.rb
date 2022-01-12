# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories_list = [
    "Letter Campaigns",
    "User Interface"
]

  categories_list.each do |name|
    p = Category.new
    p.name = name
    p.save
  end

  requests_list = {
    "Make president and vice president built-in targets" => {
      :description => "This will require a lot of work!",
      :category_id => 1
    },
    "Add title to letters sent" => {
        :description => "This will not require a ton of work!",
        :category_id => 1
    },
    "Change Edit Activist to View Activist" => {
        :description => "This will not require a ton of work! Simple change.",
        :category_id => 2
    }
  }

  requests_list.each do |request, request_hash|
    p = Request.new
    p.name = request
    p.description = request_hash[:description]
    p.category_id = request_hash[:category_id]
    p.save
  end