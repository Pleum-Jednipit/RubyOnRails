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

10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
		topic_id: Topic.last.id
	)
end

5.times do 	|skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end

8.times do |portfolio|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio}",
		subtitle: "Ruby on Rails",
		body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look eve",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200",
	)
end

1.times do |portfolio|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio}",
		subtitle: "Angular",
		body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look eve",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200",
	)
end


3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology #{technology}"
	)
end

puts "Sample data have been created"	