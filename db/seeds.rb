# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
      title: "Topic #{topic}"
  )
end

puts '3 topics created'

10.times do |blog|
  Blog.create!(
          title: "My blog post #{blog}",
          body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
          topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
           title: "Rails #{skill}",
           percent_utilized: 15
  )
end

puts "5 skills created"

7.times do |portfolio_item|
  Portfolio.create!(
               title: "Portfolio title #{portfolio_item}",
               subtitle: "Ruby on Rails",
               body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
               main_image: "http://via.placeholder.com/600x400",
               thumb_image: "http://via.placeholder.com/300x200"
  )
end

2.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio title #{portfolio_item}",
      subtitle: "Angular 4",
      body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/300x200"
  )
end

puts "9 portfolio items created"