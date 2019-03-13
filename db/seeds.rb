# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Timeline.destroy_all
User.destroy_all

u1 = User.create(name: 'u1')

t1 = Timeline.create(name: 't1',birthday: DateTime.new(2018,4,13), user: u1)

p1 = Post.create(post_type: 'photo', title: 'first picture', description: 'first time took picture of you', timeline: t1, poster: 'parent')
p2 = Post.create(post_type: 'video', title: 'first video', description: 'first time took video of you', timeline: t1, poster: 'parent')
p3 = Post.create(post_type: 'letter', title: 'first letter', description: 'first letter to you', timeline: t1, poster: 'parent')