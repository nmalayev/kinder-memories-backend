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
u7 = User.create(name: 'Arnold', username: 'arnold@gmail.com', password:'123', relation: 'grandparent')
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

# User.all.each do |u|
#   post = Post.create(post_type: 'photo', title: 'first tooth', description: 'first tooth', timeline: t1, user: u, photo: '', memory_date: DateTime.new(2018,6,15))
#   post.file.attach(io: File.open('/Users/nison/Documents/a new view of our starry night.jpg'), filename: 'pic.jpg')

#   post2 = Post.create(post_type: 'video', title: 'first time feeding papa', description: 'first time you fed your dad with a spoon', timeline: t1, user: u, video: '', memory_date: DateTime.new(2018,7,15))
#   post2.file.attach(io: File.open('/Users/nison/Desktop/baby.mp4'), filename: 'cats.mp4')
# end

# Creating letters 

Post.create(post_type: 'letter', title: 'Crib Time!', description: 'First time sleeping in your crib!', timeline: t1, user: u9, photo: '', memory_date: DateTime.new(2018,8,9), letter: 'Hi Eliana! Today we came to visit you and watched you try sleeping in your big girl crib for the first time! You looked so small in that big crib, but that didn’t bother you at all! You are so brave and we love you so much! Love, Grandma
')

Post.create(post_type: 'letter', title: 'A Little Love Story!', description: 'Your parents met 8 years ago today!', timeline: t1, user: u1, photo: '', memory_date: DateTime.new(2018,9,1), letter: 'Dear Eliana,
Today marks 8 years from the day I met your mother. All of those amazing years were beat by the minute you came into our lives. You complete our family and bring so much joy to my life. I love you so much. Love, Dad
')

Post.create(post_type: 'letter', title: 'Happy 1st New Year!', description: 'Celebrating your 1st New Year!', timeline: t1, user: u4, photo: '', memory_date: DateTime.new(2018,12,31), letter: 'Dear Eliana,
Happy first New Year. May your next year be full of love, happiness, and growth. You are an amazing child and I love watching you grow! Love, Aunt')

Post.create(post_type: 'letter', title: "Mommy's Birthday", description: "Celebrating Mommy's 27th Birthday", timeline: t1, user: u2, photo: '', memory_date: DateTime.new(2019,1,10), letter: 'Hi Baby, Today we went out to celebrate my 27th birthday at a restaurant in Queens. You wore an adorable tutu and flower in your hair and were the best behaved kid in the world. You also loved eating bread! You are the best birthday gift I could have ever asked for! Love you baby girl, Mom')

Post.create(post_type: 'letter', title: "First Valentine's Day!", description: "Happy Valentine's Day from Dad!", timeline: t1, user: u1, photo: '', memory_date: DateTime.new(2019,2,14), letter: 'Dear Eliana, Happy Valentine’s day to my forever valentine! May you always stay sweet. Sending lots of love your way today! Love, Dad')

# Creating pictures

p1 = Post.create(post_type: 'photo', title: '1 Month', description: "You're 1 month old!", timeline: t1, user: u1, memory_date: DateTime.new(2018,5,13))
p1.file.attach(io: File.open('/Users/nison/Desktop/Kinder Moments/JPEGS/IMG_3485.jpg'), filename: 'pic.jpg')

p1 = Post.create(post_type: 'photo', title: '2 Months', description: "You're 2 months old!", timeline: t1, user: u1, memory_date: DateTime.new(2018,6,13))
p1.file.attach(io: File.open('/Users/nison/Desktop/Kinder Moments/JPEGS/IMG_3885.jpg'), filename: 'pic.jpg')

p1 = Post.create(post_type: 'photo', title: '3 Months', description: "You're 3 months old!", timeline: t1, user: u1, memory_date: DateTime.new(2018,7,13))
p1.file.attach(io: File.open('/Users/nison/Desktop/Kinder Moments/3mo.jpg'), filename: 'pic.jpg')

p1 = Post.create(post_type: 'photo', title: '4 Months', description: "You're 4 months old!", timeline: t1, user: u1, memory_date: DateTime.new(2018,8,13))
p1.file.attach(io: File.open('/Users/nison/Desktop/Kinder Moments/4mo.jpg'), filename: 'pic.jpg')

p1 = Post.create(post_type: 'photo', title: '5 Months', description: "You're 5 months old!", timeline: t1, user: u2, memory_date: DateTime.new(2018,9,13))
p1.file.attach(io: File.open('/Users/nison/Desktop/Kinder Moments/5mo.jpg'), filename: 'pic.jpg')

p1 = Post.create(post_type: 'photo', title: '6 Months', description: "You're 6 months old!", timeline: t1, user: u2, memory_date: DateTime.new(2018,10,13))
p1.file.attach(io: File.open('/Users/nison/Desktop/Kinder Moments/6mo.jpg'), filename: 'pic.jpg')

p1 = Post.create(post_type: 'photo', title: '7 Months', description: "You're 7 months old!", timeline: t1, user: u2, memory_date: DateTime.new(2018,11,13))
p1.file.attach(io: File.open('/Users/nison/Desktop/Kinder Moments/7mo.jpg'), filename: 'pic.jpg')

p1 = Post.create(post_type: 'photo', title: '8 Months', description: "You're 8 months old!", timeline: t1, user: u2, memory_date: DateTime.new(2018,12,13))
p1.file.attach(io: File.open('/Users/nison/Desktop/Kinder Moments/JPEGS/8mo.jpg'), filename: 'pic.jpg')

p1 = Post.create(post_type: 'photo', title: '9 Months', description: "You're 9 months old!", timeline: t1, user: u2, memory_date: DateTime.new(2019,1,13))
p1.file.attach(io: File.open('/Users/nison/Desktop/Kinder Moments/9mo.jpg'), filename: 'pic.jpg')

p1 = Post.create(post_type: 'photo', title: '10 Months', description: "You're 10 months old!", timeline: t1, user: u2, memory_date: DateTime.new(2019,2,13))
p1.file.attach(io: File.open('/Users/nison/Desktop/Kinder Moments/10mo.jpg'), filename: 'pic.jpg')

p1 = Post.create(post_type: 'photo', title: '11 Months', description: "You're 11 months old!", timeline: t1, user: u1, memory_date: DateTime.new(2019,3,13))
p1.file.attach(io: File.open('/Users/nison/Desktop/Kinder Moments/11mo.jpg'), filename: 'pic.jpg')






