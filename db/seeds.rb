# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
Place.destroy_all
Activity.destroy_all

riyadh = City.create(name: "Riyadh", image:"https://i.pinimg.com/564x/0c/c2/b6/0cc2b69d382660a65556daf94161035a.jpg")
jeddah = City.create(name: "Jeddah", image:"https://i.pinimg.com/564x/a2/90/bf/a290bf2139fad4a281b5dbc44ae5beaa.jpg")
dammam = City.create(name: "Dammam", image:"https://i.pinimg.com/564x/b3/a2/3e/b3a23e4fa1ec2edc18676fbd92d2035f.jpg")
dhahran = City.create(name: "Dhahran", image:"https://doubletree3.hilton.com/resources/media/dt/DHAAUDI/en_US/img/shared/full_page_image_gallery/main/HL_khobarandcity01_26_677x380_FitToBoxSmallDimension_Center.jpg")

diriyah = Place.create(name: "Diriyah", location: "https://goo.gl/maps/kMiaSmsV9hw", city_id: riyadh.id, image: "https://www.eyeofriyadh.com/news_images/2017/01/1678441027225.jpg")

albalad = Place.create(name: "Albalad", location: "https://goo.gl/maps/iowUL3KXggF2", city_id: jeddah.id, image: "https://media-cdn.tripadvisor.com/media/photo-s/05/25/9f/f6/balad.jpg")

dive = Place.create(name: "Dammam dive center", location: "https://goo.gl/maps/yLZvUE7Asuu", city_id: dammam.id, image: "https://www2.padi.com/blog/wp-content/uploads/2016/10/scuba-diving-reef-e1476482719834.jpg")
ithraa = Place.create(name: "Ithraa", location: "https://goo.gl/maps/U5Y7sNBABar", city_id: dhahran.id, image: "https://pbs.twimg.com/media/DlYFoOXXoAEVv6L.jpg:large")

albujairi = Activity.create(type_of: "Parks", description: "Al Bujairi is a modern development in Direa with an overview on preserved areas of Old Direa.. it has many Saudi brands including restaurants, Cafes and souvenir shops. It would be nice to go when the weather is cooler and maybe have a traditional Saudi dinner.", age_rating: "For all ages", gender: "Female and male", place_id: diriyah.id)

diving = Activity.create(type_of: "Diving", description: "Provided a very special services and traning packages with excellent instructors.", age_rating: "20+", gender: "Male", place_id: dive.id)

albalad_ = Activity.create(type_of: "Historical jeddah", description: "Beautiful, intricately designed old merchant houses can be found all over the area, the most famous being Al Naseef House (Beit al Nassef). This stunning building has been fully preserved and is now open to public as a museum. Another museum worth visiting is the Jeddah Municipality Museum. The very first school-now museum, in the entire Arabian peninsula is located in Al Balad (Madrasa Al Falah).", age_rating: "For all ages", gender: "Female and male", place_id: albalad.id)
