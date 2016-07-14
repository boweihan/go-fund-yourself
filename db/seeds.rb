# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'test', email:'test@test.com', password:'test', password_confirmation:'test')
Project.create(name: 'test project', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', user_id: 1, max_shares: 100, picture_url:"http://www.thebolde.com/wp-content/uploads/2015/11/iStock_000083903869_Small-400x400.jpg")
Share.create(share_type: 'voting', price: 5, project_id:1)
Purchase.create(number_of_shares: 100, user_id: 1, project_id: 1, share_id: 1)
