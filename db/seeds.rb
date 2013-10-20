# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1=User.create!(id: 1, name: 'Contributor', email: 'contributor@user.com', password: 'password', contact_no: '9900990099', role: 'CONTRIBUTOR')
user2=User.create!(id: 2, name: 'Receiver', email: 'receiver@user.com', password: 'password', contact_no: '9000990009', role: 'RECEIVER')
needy=Needy.create!(id: 1, name: 'Needy', age: 12, country: 'India')
purpose1=Purpose.create!(id: 1, name: 'Basic Necessity', description: 'Basic Necessity')
purpose2=Purpose.create!(id: 2, name: 'Education', description: 'Education')
purpose3=Purpose.create!(id: 3, name: 'Medical Expense', description: 'Medical Expense')
purpose4=Purpose.create!(id: 3, name: 'Others', description: 'Others')
help_type3=HelpType.create!(id: 1, name: 'Money')
help_type1=HelpType.create!(id: 2, name: 'New Item')
help_type2=HelpType.create!(id: 3, name: 'Used Item')
help_type2=HelpType.create!(id: 4, name: 'Others')
wish=Wish.create!(id: 1, wish_item: 'Dairy_Milk', percent_fulfilled: 0, user_id: 2, needy_id: 1, purpose_id: 4, help_type_id: 4, quantity: 10, due_date: '2013-10-25')
