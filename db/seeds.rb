Post.destroy_all
User.destroy_all
Timeline.destroy_all

# Parents
u1 = User.create(name: 'Nison', username: 'nmalayev@gmail.com', password:'123', relation: 'parent')
u2 = User.create(name: 'Katrina', username: 'krockford10@gmail.com', password:'123', relation: 'parent')

# Uncle/Aunts
u3 = User.create(name: 'Joey', username: 'joey@gmail.com', password:'123', relation: 'uncle')
u4 = User.create(name: 'Phoebe', username: 'phoebe@gmail.com', password:'123', relation: 'aunt')
u5 = User.create(name: 'Monica', username: 'monica@gmail.com', password:'123', relation: 'aunt')
u6 = User.create(name: 'Chandler', username: 'chandler@gmail.com', password:'123', relation: 'uncle')

# Grandparents
u7 = User.create(name: 'Arnold', username: 'arnols@gmail.com', password:'123', relation: 'grandparent')
u8 = User.create(name: 'Gerald', username: 'gerald@gmail.com', password:'123', relation: 'grandparent')
u9 = User.create(name: 'Helga', username: 'helga@gmail.com', password:'123', relation: 'grandparent')
u10 = User.create(name: 'Lila', username: 'lila@gmail.com', password:'123', relation: 'grandparent')



u11 = User.create(name: 'Tommy', username: 'tommy@gmail.com', password:'123', relation: 'sibling')
u12 = User.create(name: 'Angelica', username: 'angelica@gmail.com', password:'123', relation: 'sibling')

# Friends

# Siblings

# Cousins

# Creating timeline
t1 = Timeline.create(name: 'Eliana',birthday: DateTime.new(2018,4,13,18,44,0,'-4'))


# Creating posts

User.all.each do |u|
  post = Post.create(post_type: 'photo', title: 'first tooth', description: 'first tooth', timeline: t1, user: u, photo: '', memory_date: DateTime.new(2018,6,15))
  post.file.attach(io: File.open('/Users/nison/Desktop/steve-harvey-698868-unsplash.jpg'), filename: 'pic.jpg')

  post2 = Post.create(post_type: 'video', title: 'first time feeding papa', description: 'first time you fed your dad with a spoon', timeline: t1, user: u, video: '', memory_date: DateTime.new(2018,7,15))
  post2.file.attach(io: File.open('/Users/nison/Desktop/cats.mp4'), filename: 'cats.mp4')
end

# p1 = Post.create(post_type: 'photo', title: 'first tooth', description: 'first tooth', timeline: t1, user: u1, photo: '', memory_date: DateTime.new(2018,6,15))
# p2 = Post.create(post_type: 'video', title: 'first time feeding papa', description: 'first time you fed your dad with a spoon', timeline: t1, user: u1, video: '', memory_date: DateTime.new(2018,7,15))
# p3 = Post.create(post_type: 'letter', title: 'first letter', description: 'first letter to you', timeline: t1, user: u1, memory_date: DateTime.new(2018,8,15))
# p4 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u1, memory_date: DateTime.new(2018,9,15))
# p5 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u1, memory_date: DateTime.new(2017,9,15))
# p6 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u1, memory_date: DateTime.new(2019,9,15))
# p7 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u1, memory_date: DateTime.new(2016,9,15))
# p8 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u1, memory_date: DateTime.new(2018,10,15))
# p9 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u1, memory_date: DateTime.new(2018,11,15))
# p10 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u1, memory_date: DateTime.new(2018,12,15))

# p1.file.attach(io: File.open('/Users/nison/Documents/peas.jpg'), filename: 'peas.jpg')
# p2.file.attach(io: File.open('/Users/nison/Desktop/cats.mp4'), filename: 'peas.jpg')