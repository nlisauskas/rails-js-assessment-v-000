# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Course.create(
[{name: 'Naples Grande - Yellow', city: 'Naples', state: 'FL', slope: 113, rating: 71},
  {name: 'Pebble Beach', city: 'San Francisco', state: 'CA', slope: 113, rating: 71},
  {name: 'TPC Sawgrass', city: 'Jacksonville', state: 'FL', slope: 113, rating: 71},
]
)

User.create(
[{name: 'Nick', hometown: 'Aurora'},
{name: 'Kevin', hometown: 'Poolesville'},
{name: 'Patrick', hometown: 'Duluth'},
{name: 'Conor', hometown: 'Syracuse'},
{name: 'Alex', hometown: 'Simsbury'}
]
)

Round.create(
[{score: 74, putts: 30, user_id: 1 , course_id: 1},
  {score: 74, putts: 30, user_id: 2 , course_id: 2},
  {score: 74, putts: 30, user_id: 3 , course_id: 3},
  {score: 74, putts: 30, user_id: 4 , course_id: 1},
  {score: 74, putts: 30, user_id: 5 , course_id: 2}
]
)
