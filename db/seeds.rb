# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users=User.create(id: 1, name: 'sajani')
needy=Needy.create(id: 1, name: 'needy1')
purpose=Purpose.create(id: 1, name: 'basic necesity')
help_type=HelpType.create(id: 1, name: 'new item')
wish=Wish.create(id: 1, wish_item: 'dairy_milk', percent_fulfilled: 0, user_id: 1, needy_id: 1, purpose_id: 1, help_type_id: 1, quantity: 1)
