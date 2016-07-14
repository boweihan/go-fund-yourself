# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'test', email:'test@test.com', password:'test', password_confirmation:'test')
User.create(name: 'test2', email:'test2@test2.com', password:'test2', password_confirmation:'test2')

Share.create(share_type: 'voting', price: 5, project_id:1)
Share.create(share_type: 'voting', price: 5, project_id:2)
Share.create(share_type: 'voting', price: 10, project_id:3)
Share.create(share_type: 'voting', price: 25, project_id:4)
Share.create(share_type: 'voting', price: 15, project_id:5)
Share.create(share_type: 'voting', price: 5, project_id:6)
Share.create(share_type: 'voting', price: 5, project_id:7)

Purchase.create(number_of_shares: 50, user_id: 1, project_id: 1, share_id: 1)
Purchase.create(number_of_shares: 10, user_id: 2, project_id: 2, share_id: 2)
Purchase.create(number_of_shares: 20, user_id: 2, project_id: 2, share_id: 3)
Purchase.create(number_of_shares: 5, user_id: 1, project_id: 4, share_id: 4)
Purchase.create(number_of_shares: 10, user_id: 1, project_id: 1, share_id: 5)
Purchase.create(number_of_shares: 5, user_id: 2, project_id: 5, share_id: 6)
Purchase.create(number_of_shares: 5, user_id: 1, project_id: 1, share_id: 7)

Project.create(name: 'Strawberry FroYo', description: 'Enjoy delicious strawberry frozen yogurt. Organic stawberries and free-range cows.', picture_url: 'http://www.usnews.com/dims4/USNEWS/53a6a05/2147483647/resize/1200x%3E/quality/85/?url=%2Fcmsmedia%2Fe3%2F71%2Fb953c8a64e9ab84473373bddf7cb%2F160104-yogurtfruits-stock.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 1, max_shares: 200)
Project.create(name: 'Homemade Baskets', description: 'Buy a handmade weaved basket for a friend. Made with organic wheat.', picture_url: 'http://media-cache-ec0.pinimg.com/736x/8c/e9/06/8ce906c48dfd395903b275569dbe0187.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 1, max_shares: 100)
Project.create(name: 'DIY Terrariums', description: 'Buy a DIY kit to make your own terrarium at home ! Great for gifts !', picture_url: 'http://rk.weimgs.com/weimgs/rk/images/wcm/products/201616/0008/open-face-terrariums-o.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 2, max_shares: 50)
Project.create(name: 'Potato Salad', description: 'I have a dream to make the best potato salad in the world.', picture_url: 'http://www.inspiredtaste.net/wp-content/uploads/2013/05/Potato-Salad-Recipe.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 2, max_shares: 70)
Project.create(name: 'Action Comics', description: 'The best comic books in the world ! Funny, witty and interesting !', picture_url: 'http://vignette4.wikia.nocookie.net/marvel_dc/images/5/5a/Action_Comics_1.jpg/revision/latest?cb=20140125003421', deadline: DateTime.new(2018, 6, 22), user_id: 1, max_shares: 100)

Project.create(name: 'Cat Headphones', description: 'Listen to music more clearly. Try our headphones !', picture_url: 'https://38.media.tumblr.com/c61bf086ed577906abd3b34fe9e07f18/tumblr_n6x3fcOucv1tbj25ao2_1280.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 1, max_shares: 70)
Project.create(name: 'Mini Burgers', description: 'Mini Burgers is the new restaurant on the block. Come try it out !', picture_url: 'http://theritzconnection.com/images/large/Bacon__Cheddar_MiniBurger1.JPG.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 2, max_shares: 100)
