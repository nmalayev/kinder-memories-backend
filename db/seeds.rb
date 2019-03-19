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

u1 = User.create(name: 'u1', relation: 'parent')
u2 = User.create(name: 'u2', relation: 'parent')
u3 = User.create(name: 'u3', relation: 'grandparent')
u4 = User.create(name: 'u4', relation: 'friend')
u5 = User.create(name: 'u5', relation: 'sibling')

t1 = Timeline.create(name: 't1',birthday: DateTime.new(2018,4,13,18,44,0,'-4'))

p1 = Post.create(post_type: 'photo', title: 'first tooth', description: 'first tooth', timeline: t1, user: u1, photo: 'https://lh3.googleusercontent.com/nhdTOsRzPCtuI0O9RWzKUKevIwHlhnYt7fP-dIRU9DNqIdwv-r5lcZORdplnKGaR_PCA5xNgp4mRkTxvXh3FnJPMXMIt21U5c_v4kiwUxODJqJB0YLqN6QGRATsRDDS0-UjvnpF8w6DKYoM3WGkPHUnNJhMRaL2JORTmTRiYgroGE6Hbv_Mp28NYEnhbYBoHCHf5AFacb1lgBSMUS20PxPCysW9qwY6reYcNS8qcPRD5vCkuMbYm43roQeng7bdrSoQw_ntmE4aVvAsOmQl_eUyM3Bm4qTB2Ncx-fgH1VL8I1yX09CTwrCGVdvUCIByZF4T5IOMKwvCWS7UsFVKc3k5BnrlRp7-FmoXl4dpJBo-9sbWKshJz85vqEC60MRru8WOnuLAaSoh-55vGka9853VGAuJKF-Eo4gXCLRRiEluSfMMfhmjRWJ7h_jNOGyHAsbfXmVh6A03D5oasCl9vaFPqB-uEY2P2-T2tVea_ULgSe0yzOY6lTQ0F0zearcENP5JnRI8-CHRBK3FJowkZF7R_zwpH_bvflQXxoqIwwbaWelLDx2AvTIKvCOPadBrvUnbDwVwsnrqJL0R4GCR-h2a6Qa53R6owfMXaJgKihfGhniCa7DVxa4baWCOAKC7q-ywC87U77hl3nVaP1JATtCX-7c7ctMYo=w1598-h2130-no', memory_date: DateTime.new(2018,6,15))
p2 = Post.create(post_type: 'video', title: 'first time feeding papa', description: 'first time you fed your dad with a spoon', timeline: t1, user: u1, video: 'https://photos.google.com/share/AF1QipNelBKpEmJzZtVDBn5xg1MJUFE5Ue00ruTE56Pq8ltYujiPsSbXnHytFG4-dO5W6g/photo/AF1QipMa-TQbhfQcrwgWAIKz3q3jEuPq49pe5V5Xj0P5?key=c0lhbFBHVXJqTmV4Y3BaUUt2akFnWnA4aVhKMDh3.mp4', memory_date: DateTime.new(2018,7,15))
p3 = Post.create(post_type: 'letter', title: 'first letter', description: 'first letter to you', timeline: t1, user: u2, memory_date: DateTime.new(2018,8,15))
p4 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u2, memory_date: DateTime.new(2018,9,15))
p5 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u3, memory_date: DateTime.new(2017,9,15))
p6 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u3, memory_date: DateTime.new(2019,9,15))
p7 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u4, memory_date: DateTime.new(2016,9,15))
p8 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u4, memory_date: DateTime.new(2018,10,15))
p9 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u5, memory_date: DateTime.new(2018,11,15))
p10 = Post.create(post_type: 'letter', title: 'second letter', description: 'second letter to you', timeline: t1, user: u5, memory_date: DateTime.new(2018,12,15))