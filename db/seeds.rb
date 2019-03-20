Post.destroy_all
Timeline.destroy_all
User.destroy_all

u1 = User.create(name: 'u1', relation: 'parent')
u2 = User.create(name: 'u2', relation: 'parent')
u3 = User.create(name: 'u3', relation: 'grandparent')
u4 = User.create(name: 'u4', relation: 'friend')
u5 = User.create(name: 'u5', relation: 'sibling')

t1 = Timeline.create(name: 't1',birthday: DateTime.new(2018,4,13,18,44,0,'-4'))

p1 = Post.create(post_type: 'photo', title: 'first tooth', description: 'first tooth', timeline: t1, user: u1, photo: '', memory_date: DateTime.new(2018,6,15))
p2 = Post.create(post_type: 'video', title: 'first time feeding papa', description: 'first time you fed your dad with a spoon', timeline: t1, user: u1, video: '', memory_date: DateTime.new(2018,7,15))
p3 = Post.create(post_type: 'letter', title: 'first letter', description: 'first letter to you', timeline: t1, user: u2, memory_date: DateTime.new(2018,8,15))
p4 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u2, memory_date: DateTime.new(2018,9,15))
p5 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u3, memory_date: DateTime.new(2017,9,15))
p6 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u3, memory_date: DateTime.new(2019,9,15))
p7 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u4, memory_date: DateTime.new(2016,9,15))
p8 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u4, memory_date: DateTime.new(2018,10,15))
p9 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u5, memory_date: DateTime.new(2018,11,15))
p10 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u5, memory_date: DateTime.new(2018,12,15))

p1.file.attach(io: File.open('/Users/nison/Documents/Screenshots/Screen Shot 2019-02-07 at 09.19.42.png'), filename: 'mc.png')