# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  User.create
end

5.times do
  Post.create user: User.all.sample
end

5.times do |i|
  comment = Comment.create post: Post.all.sample, user: User.all.sample, message: "Sample comment #{i}"
  rand(0..5).times do
    comment.likes << User.all.sample
  end
end