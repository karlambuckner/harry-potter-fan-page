Category.destroy_all
User.destroy_all
Work.destroy_all
Review.destroy_all

category_list = [
  "News",
  "Houses",
  "Humour",
  "J.K. Rowling",
  "Books",
  "Movies/Music",
  "Hogwarts Education",
  "Quizzes"
]

category_list.each do |name|
  Category.create!(name: name)
end


30.times do |index|
  User.create!(username: Faker::HarryPotter.unique.character)
end


30.times do |index|
  Work.create!(name: Faker::HarryPotter.location,
  description: Faker::HarryPotter.quote,
  user_id: Faker::Number.between(1, 30),
  category_id: Faker::Number.between(1,8))
end

30.times do |index|
  Review.create!(content: Faker::HarryPotter.quote,
  work_id: Faker::Number.between(1, 30),
  user_id: Faker::Number.between(1,30))
end
