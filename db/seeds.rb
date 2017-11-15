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
  Category.create(name: name)
end

work_list = [
  ["Voldemort Meme", "Funny meme of Voldemort", 3, "https://i.imgflip.com/18e7mx.jpg", "", "", 1],
  ["Favorite Quote", "Quote from Book 3", 5, "http://inside-of-a-dog.net/wp-content/uploads/2015/08/IMG_4831.jpg", "", "", 2],
  ["JK Fact", "Shes from the UK", 4, "http://www.ox.ac.uk/sites/files/oxford/styles/ow_medium_feature/public/field/field_image_main/shutterstock_173453582%20%281%29.jpg?itok=_-gIB2V7", "", "", 4]
]

work_list.each.each do |name, description, category_id, image_url, created_at, updated_at, user_id|
  Work.create(name: name, description: description, category_id: category_id, image_url: image_url, created_at: created_at, updated_at: updated_at, user_id: user_id)
end

user_list = [
  "karlambuckner",
  "srhcrete",
  "javipapi",
  "dawsonawesome",
  "mostriki",
  "markloveshermoine1"
]

user_list.each do |username|
  User.create(username: username)
end

review_list = [
  [1, 6, "Hahaha where's Harry when you need him?"],
  [1, 4, "This is great! Trump sucks."],
  [1, 3, "Trump is great, I don't like this."]
]

review_list.each do |work_id, user_id, content|
  Review.create(work_id: work_id, user_id: user_id, content: content)
end
