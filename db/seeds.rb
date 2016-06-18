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

users = User.create([
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


game_types.each do |gt|
  Event.create(
    name: "Sample #{gt}",
    game_type_id: gt.id,
    location_id: locations.sample.id,
    date_time: Time.zone.now + rand(7).days - rand(6).hours,
    minimum_number: rand(10) + 1,
    users: users.sample(rand(4) + 1)
  )
end
