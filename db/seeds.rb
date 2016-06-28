# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = Location.create([
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

game_types = GameType.create([
  { name: 'Basketball' },
  { name: 'Biking' },
  { name: 'Happy Hour' },
  { name: 'Lawn Games' },
  { name: 'Ping Pong' },
  { name: 'Running' },
  { name: 'Soccer' },
  { name: 'Volleyball' },
  { name: 'Walking' }
])

users = User.create([
  {
    name: 'Scott S.',
    email: 'sschupbach'
  }
])
