require 'faker'
rand(10..30).times do
  a = Article.create(title: Faker::Lorem.words(rand(1..10)).join(" "), body: Faker::Lorem.paragraphs(rand(1..4)).join("\n"))
  #rand(3..10).times do
    #a.tags.create(body: Faker::Lorem.paragraphs(rand(1..2)).join("\n"))
	#end
end

puts "Seed finished"
puts "#{Article.count} articles created"
#puts "#{Tag.count} tags created"