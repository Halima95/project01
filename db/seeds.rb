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

riyadh = City.create(name: "Riyadh")
jeddah = City.create(name: "Jeddah")
dammam = City.create(name: "Dammam")
dhahran = City.create(name: "Dhahran")

diriyah = Place.create(name: "Diriyah", location: "North-western of Riyadh.", city_id: riyadh.id, image: "")
albalad = Place.create(name: "Albalad", location: "Center of Jeddah", city_id: jeddah.id, image: "")
dive = Place.create(name: "Dammam dive center", location: "Yaqoot Alhamawy Street, Dammam", city_id: dammam.id, image: "")
ithraa = Place.create(name: "Ithraa", location: "Eastern city of Dhahran", city_id: dhahran.id, image: "")

albujairi = Activity.create(type_of: "Park", description: "Al Bujairi is a modern development in Direa with an overview on preserved areas of Old Direa.. it has many Saudi brands including restaurants, Cafes and souvenir shops. It would be nice to go when the weather is cooler and maybe have a traditional Saudi dinner.", age_rating: "For all ages", gender: "Female and male", place_id: diriyah.id)

diving = Activity.create(type_of: "Diving", description: "Provided a very special services and traning packages with excellent instructors.", age_rating: "20+", gender: "Male", place_id: dive.id)

albalad_ = Activity.create(type_of: "Historical", description: "Beautiful, intricately designed old merchant houses can be found all over the area, the most famous being Al Naseef House (Beit al Nassef). This stunning building has been fully preserved and is now open to public as a museum. Another museum worth visiting is the Jeddah Municipality Museum. The very first school-now museum, in the entire Arabian peninsula is located in Al Balad (Madrasa Al Falah).", age_rating: "For all ages", gender: "Female and male", place_id: albalad.id)
