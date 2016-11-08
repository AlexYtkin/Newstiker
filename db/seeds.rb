# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create! :email => 'alex@gmail.com', :password => 'qwe123', :password_confirmation => 'qwe123'
user = User.create! :email => 'vitaly@mail.ru', :password => '123456', :password_confirmation => '123456'
user = User.create! :email => 'ivan@gmail.com', :password => 'zxcvbn', :password_confirmation => 'zxcvbn'
