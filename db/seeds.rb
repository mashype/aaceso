# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

usertypes = Usertype.create ([{usertypename: 'Provider'}, {usertypename: 'Patient'}, {usertypename: 'Provider Admin'}, {usertypename: 'Master Admin'}])