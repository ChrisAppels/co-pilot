# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Booking.destroy_all
Plane.destroy_all
Review.destroy_all

User.create! ([{
  first_name: "Francois",
  last_name: "Damiens",
  email: "Francoisdu69@gmail.com",
  phone: "0989768543",
  password: "1234heleboel"
  },
  {
      first_name: "Daniel",
  last_name: "Blake",
  email: "BigBlake@hotmail.au",
  phone: "0129738563",
  password: "1234heleboel"
  },
  {
      first_name: "Chris",
  last_name: "Janssen",
  email: "janssenboss@yandex.nl",
  phone: "0988762533",
  password: "1234heleboel"
  },
  {
    first_name: "Alex",
  last_name: "renaud",
  email: "A.renaud@gmail.ch",
  phone: "0287763513",
  password: "1234heleboel"
  },
  {
      first_name: "Louis",
  last_name: "Merlot",
  email: "MerlotBoy@gmail.fr",
  phone: "0989722222",
  password: "1234heleboel"
  },
  {
  first_name: "Vladimir",
  last_name: "Butin",
  email: "kingofthetaiga@yandex.ru",
  phone: "0239754543",
  password: "1234heleboel"
  }])



Plane.create! ([{
model: "Dassault Falcon 7X",
description: "The Dassault Falcon 7X is a large-cabin, long-range trijet manufactured by Dassault Aviation, the flagship offering of its business jet line.
It was first presented to the public at the 2005 Paris Air Show. The Falcon 8X is derived from the 7X with longer range afforded by engine optimizing,
aerodynamic refinements and an increase in fuel capacity.
It is the only trijet in production, along with the Falcon 900, having an S-duct central engine.
Range: 11,000km.",
remote_photo_url: "http://res.cloudinary.com/merch-factory/image/upload/v1478624818/fh1pbuq3hvbzky8d0wt4.jpg",
capacity: 12,
price: 3000,
user: User.all.sample
},
{
model: "Diamond Aircraft DA 42-VI",
description: "The Diamond DA42 Twin Star is a four seat, twin engine, propeller-driven airplane manufactured by Diamond Aircraft Industries.
Its airframe is made largely of composite materials.
Range: 1600km",
remote_photo_url: "https://files.graphiq.com/1617/media/images/Diamond_DA42-VI_2334301.jpg",
capacity: 4,
price: 100,
user: User.all.sample
},
{
  model: "Pilatus PC-12",
description: "The Pilatus PC-12 NG has gained a reputation for outstanding versatility,
performance, reliability and operational flexibility. As such, it is one of the most popular turbine-powered business aircraft on the market today.
Range:2800km.",
remote_photo_url: "https://www.luxuryaircraftsolutions.com/wp-content/uploads/2015/06/Pilatus-PC-12-Exterior.jpeg",
capacity: 9,
price: 700,
user: User.all.sample
},
{
  model: "Dassault Mirage 2000",
description: "Whenever you are late for a meeting, fly there with the Mirage at 2000 km/h.
The Dassault Mirage 2000 is a French multirole, single-engine fourth-generation jet fighter manufactured by Dassault Aviation.
Range: 1500km.",
remote_photo_uprl: "http://www.airforce-technology.com/projects/mirage/images/mirage2000_8.jpg",
capacity: 1,
price: 3000,
user: User.all.sample
}])



Review.create! ([{
  content: "Crazy plane! Went from Paris to Milano in 20 minutes !",
  stars: 5,
  user_id: 4,
  plane_id: 4
},
{
  content: "Very comfortable plane, the pilote was great, and the stewardess was hot!",
  stars: 5,
  user_id: 3,
  plane_id: 1
},
{
  content: "Very affordable and comfortable, went to Innsbruck in the best conditions.",
  stars: 4,
  user_id: 1,
  plane_id: 2
},
{
 content: "The pilote made barrel rolls! was insane :) ",
 stars: 5,
 user_id: 2,
 plane_id: 4
},
{
  content: " My wife was giving birth on the other side of the country, thanks to Daniel and his Mirage,
  I was able to join her!",
  stars: 5,
  user_id: 6,
  plane_id: 4
 }])



Booking.create! ([{
  start_date: Date.new(2016,11,25),
  end_date: Date.new(2016,11,26),
  user_id: 4,
  plane_id: 4
},
{
  start_date: Date.new(2016, 11,30),
  end_date: Date.new(2016,12,2),
  user_id: 3,
  plane_id: 1
},
{
  start_date: Date.new(2016,11,25),
  end_date: Date.new(2016,11,27),
  user_id: 1,
  plane_id: 2
},
{
  start_date: Date.new(2017,1,3),
  end_date: Date.new(2017,1,5),
  user_id: 2,
  plane_id: 4
},
{
  start_date: Date.new(2016,12,24),
  end_date: Date.new(2016,12,25),
  user_id: 6,
  plane_id: 4
}])
