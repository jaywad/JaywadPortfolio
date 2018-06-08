User.create!(
	email: "admin@test.com",
	password: "123456",
	password_confirmation: "123456",
	name: "Admin User",
	roles: "site_admin"
	)

puts "1 Admin user created"

User.create!(
	email: "regular@test.com",
	password: "123456",
	password_confirmation: "123456",
	name: "Regular User"
	)

puts "1 Regular user created"


3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end

puts "3 topics created"


10.times do |blog|
	Blog.create!(
			title: "My Blog Post #{blog}",
			body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
			topic_id: Topic.last.id,
			user_id: User.first.id
		)
end

puts "10 blog posts created"


5.times do |skill|
	Skill.create!(
			title: "Rails	#{skill}",
			percent_utilized: 15
		)
end

puts "5 skills created"


8.times do |portfolio_item|
	Portfolio.create!(
			title: "Portfolio title: #{portfolio_item}",
			subtitle: "Ruby on Rails",
			body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
			main_image: "http://via.placeholder.com/600x400",
			thumb_image: "http://via.placeholder.com/350x200"
		)
end

1.times do |portfolio_item|
	Portfolio.create!(
			title: "Portfolio title: #{portfolio_item}",
			subtitle: "Angular",
			body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
			main_image: "http://via.placeholder.com/600x400",
			thumb_image: "http://via.placeholder.com/350x200"
		)
end

puts "9 portfolio items created, 8 Ruby on Rails and 1 Angular"

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology #{technology}"
		)
end

puts "3 technologies created"

