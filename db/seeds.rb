# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'l3iodeez@gmail.com', password: 'biodiesel', password_confirmation: 'biodiesel', is_admin: true, account_type: 0)
User.create(email: 'henry.d.dotson@gmail.com', password: 'biodiesel', password_confirmation: 'biodiesel', is_admin: false, account_type: 1)
