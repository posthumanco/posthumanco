# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Seeding...'

Post.create(
	title: "A Sample Post",
	post: "Maecenas egestas, risus ac blandit mattis, velit odio vehicula tellus, at cursus est tellus et urna. Fusce sit amet tempus neque. Mauris tristique odio eu ante laoreet, in vestibulum libero molestie. Curabitur vitae mi orci. Mauris vitae lectus venenatis, dictum sapien et, porta tellus. Mauris justo dui, mattis sit amet dolor eget, consectetur elementum purus. Aliquam augue massa, mollis congue ligula eget, consequat vehicula lorem. Vestibulum congue diam eros, et suscipit eros egestas consectetur. Mauris et velit ultrices, dignissim est vitae, elementum magna. Praesent imperdiet leo id neque tempus ullamcorper.",
	author: "Dustin"
)

puts 'Complete!'