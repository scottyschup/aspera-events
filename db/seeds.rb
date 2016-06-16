# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.create([
  {
    name: 'Aspera Game Room'
  }, {
    name: 'Doyle-Hollis Park'
  }, {
    name: 'Around the neighborhood'
  }, {
    name: 'Branch Line'
  }, {
    name: 'Summer Summer'
  }, {
    name: 'The Bureau'
  }, {
    name: 'Honor Bar'
  }
])

GameType.create([
  {
    name: 'Ping Pong'
  }, {
    name: 'Volleyball'
  },{
    name: 'Soccer'
  }, {
    name: 'Basketball'
  }, {
    name: 'Walking'
  }, {
    name: 'Running'
  }, {
    name: 'Biking'
  }, {
    name: 'Happy Hour'
  }
])

User.create([
  {
    name: 'Scott',
    email: 'sschupbach'
  }, {
    name: 'Conan',
    email: 'conan'
  }, {
    name: 'Bryan',
    email: 'bbischof'
  }, {
    name: 'Peter',
    email: 'peter'
  }
])

Event.create(
  name: 'Test volleyball',
  game_type_id: 2,
  location_id: 2,
  date_time: Time.zone.now + 1.week,
  minimum_number: 5,
  users: User.all.first(4)
)
