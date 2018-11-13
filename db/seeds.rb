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
Category.destroy_all

categories = ["Parks", "Diving", "Hiking", "Theatre", "Historical", "Muiscal", "Scince", "Art"]
categories.each do |c|
  Category.create(name: c)
end

riyadh = City.create(name: "Riyadh", image: "https://i.pinimg.com/564x/0c/c2/b6/0cc2b69d382660a65556daf94161035a.jpg")
jeddah = City.create(name: "Jeddah", image: "https://i.pinimg.com/564x/a2/90/bf/a290bf2139fad4a281b5dbc44ae5beaa.jpg")
dammam = City.create(name: "Dammam", image: "http://www.alriyadh.com/media/article/2011/07/01/img/355883481868.jpg")

dhahran = City.create(name: "Dhahran", image: "https://doubletree3.hilton.com/resources/media/dt/DHAAUDI/en_US/img/shared/full_page_image_gallery/main/HL_khobarandcity01_26_677x380_FitToBoxSmallDimension_Center.jpg")

abha = City.create(name: "Abha", image: "https://pbs.twimg.com/media/ClAticeWAAE7sdf.jpg:large")

almadinah = City.create(name: "Almadinah Almunawarah", image: "http://www.travelnostop.com/wp-content/uploads/2018/01/9108_saudi_arabia_medina_al-masjid_al-nabawi_thumbnails-610x366.jpg")






diriyah = Place.create(name: "Diriyah", location: "https://goo.gl/maps/kMiaSmsV9hw", city_id: riyadh.id, image: "https://www.eyeofriyadh.com/news_images/2017/01/1678441027225.jpg")

albalad = Place.create(name: "Albalad", location: "https://goo.gl/maps/iowUL3KXggF2", city_id: jeddah.id, image: "https://media-cdn.tripadvisor.com/media/photo-s/05/25/9f/f6/balad.jpg")

dive = Place.create(name: "Dammam dive center", location: "https://goo.gl/maps/yLZvUE7Asuu", city_id: dammam.id, image: "https://www2.padi.com/blog/wp-content/uploads/2016/10/scuba-diving-reef-e1476482719834.jpg")

ithraa = Place.create(name: "Ithraa", location: "https://goo.gl/maps/U5Y7sNBABar", city_id: dhahran.id, image: "https://pbs.twimg.com/media/DlYFoOXXoAEVv6L.jpg:large")

tuwaiq = Place.create(name: "Tuwaiq", location: "https://goo.gl/maps/WJ5cgDaV6am", city_id: riyadh.id, image: "https://abunawaf.com/wp-content/uploads/2015/08/5-%D8%AC%D8%A8%D9%84-%D8%B7%D9%88%D9%8A%D9%82-%D9%81%D9%8A-%D9%86%D8%AC%D8%AF.jpg")

green = Place.create(name: "Green Mountain", location: "https://goo.gl/maps/mcTxazW3J4t", city_id: abha.id, image: "https://i2.wp.com/news.travelerpedia.net/wp-content/uploads/2017/06/%D8%A7%D9%84%D8%AC%D8%A8%D9%84-%D8%A7%D9%84%D8%A7%D8%AE%D8%B6%D8%B1.jpg")

alula = Place.create(name: "AlUla", location: "https://goo.gl/maps/UQcmRvaA7r72", city_id: almadinah.id, image: "https://assets.atlasobscura.com/media/W1siZiIsInVwbG9hZHMvcGxhY2VfaW1hZ2VzLzQ1OWQzZmI5ZGQzNTNmZWQyMV80MDA5OTE1OTU3XzAzMzE1NWYyNjJfby5qcGciXSxbInAiLCJ0aHVtYiIsIjEyMDB4PiJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA4MSAtYXV0by1vcmllbnQiXV0/4009915957_033155f262_o.jpg")

alaan= Place.create(name: "Alaan Artspace", location: "https://goo.gl/maps/bxqqmoXwp5w", city_id: riyadh.id, image: "http://alaanart.com/uploads/crop_image/428/383/20140409223715_aboutalaan.png?x=-56&y=-101&w=683&o=428?")




albujairi = Activity.create(type_of: "Albujairi", description: "Al Bujairi is a modern development in diriyah with an overview on preserved areas of Old diriyah.. it has many Saudi brands including restaurants, Cafes and souvenir shops. It would be nice to go when the weather is cooler and maybe have a traditional Saudi dinner.", age_rating: "Suitable for Youth, Teens, Adult", gender: "Female and male", place_id: diriyah.id, category_id: (Category.find_by(name: "Parks").id))

diving = Activity.create(type_of: "Diving center", description: "Provided a very special services and traning packages with excellent instructors.", age_rating: "20+", gender: "Male", place_id: dive.id, category_id: (Category.find_by(name: "Diving").id))

albalad_ = Activity.create(type_of: "Historical jeddah", description: "Beautiful, intricately designed old merchant houses can be found all over the area, the most famous being Al Naseef House (Beit al Nassef). This stunning building has been fully preserved and is now open to public as a museum. Another museum worth visiting is the Jeddah Municipality Museum. The very first school-now museum, in the entire Arabian peninsula is located in Al Balad (Madrasa Al Falah).", age_rating: "Suitable for Youth, Teens, Adult", gender: "Female and male", place_id: albalad.id, category_id: (Category.find_by(name: "Historical").id))

edge = Activity.create(type_of: "Edge of the world", description: "One of the most popular desert treks from Riyadh is the Edge of the World along the Tuwaiq Escarpment. Definitely worth a visit and a perfect day trip because of the spectacular scenery and an unforgettable experience.", age_rating: "+16", gender: "Female and male", place_id: tuwaiq.id, category_id: (Category.find_by(name: "Hiking").id))

madain = Activity.create(type_of: "Mada’in Saleh", description: "The historic name of Mada’in Saleh is Hegra, or al-Hijr in Arabic. Madain Saleh is located in Al Ula, in the Hijaz region of western Saudi Arabia, some 300 kms north of Medina.", age_rating: "Suitable for Youth, Teens, Adult", gender: "Female and male", place_id: alula.id, category_id: (Category.find_by(name: "Historical").id))

 ithraa_ = Activity.create(type_of: "Manganiyar Connection", description: "Marvel at the timeless art of the Manganiyar musicians who used to perform for the Maharajas of India. Their performance transcends borders and centuries and takes us to the foundations of Indian classical music. This “vertical orchestra” blends the theatrical with the musical.", age_rating: "Suitable for Youth, Teens, Adult", gender: "Female and male", place_id:ithraa.id, category_id:(Category.find_by(name: "Muiscal").id))

 mystery = Activity.create(type_of: "Mystery of Science", description: "Science is all about experiments. Put on your lab coats and get ready for the mess!", age_rating: "Suitable for Kids", gender: "Female and male", place_id:ithraa.id,category_id:(Category.find_by(name: "Scince").id))

 ithraaMovie = Activity.create(type_of: "Robotic Art: Transformations", description: "Interviews filmed at the Robotic Arts Exhibition presented by the Cité des Sciences et de l'industrie in Paris, (8 April 2014 - 4 January 2015). ROBOTIC ART exhibition looks at transformations made possible by the use of technologies developed for the most part since the mid-twentieth century, particularly electronics, computing, bionics, and robotics. Genre: Documentary Classification: G Year: 2017 Duration: 38 mins Curator: Richard Castelli", age_rating: "Suitable for Kids", gender: "Female and male", place_id:ithraa.id, category_id:(Category.find_by(name: "Theatre").id ))

green_ = Activity.create(type_of: "Cable car", description: "The “mountain” is actually a hill overlooking the city which is beautifully lit with green lights in the night. There’s a restaurant and café on the top with a nice outdoor terrace enjoying amazing views of Abha, and you can take a cable car ride from/to the mountain.", age_rating: "Suitable for Youth, Teens, Adult", gender: "Families", place_id: green.id, category_id: (Category.find_by(name: "Parks").id))

arch = Activity.create(type_of: "AlMiftaha village", description: "Discover Asir regions traditional architecture by visiting AlMiftaha village turned museum to see how people lived back in the day.", age_rating: "Suitable for Youth, Teens, Adult", gender: "Families", place_id: green.id, category_id:( Category.find_by(name: "Historical").id))

art = Activity.create(type_of: " Alāan ", description: "Alāan – which means ‘now’ in Arabic – reflects the energy of the art scene in Saudi Arabia and the feeling in Riyadh that a space such as this is long overdue. Is a multi-functional contemporary gallery, educational hub, library, restaurant, shop and coffeehouse located in the heart of Riyadh. Dedicated to nurturing emerging and established contemporary artists and designers from Saudi Arabia, the region and across the globe. Alāan Artspace’s programme offers a platform for curated exhibitions and a non-profit educational forum for artists, creative practitioners and art enthusiasts of all ages.", age_rating: "Suitable for Youth, Teens, Adult", gender: "Female and male", place_id: diriyah.id, category_id: (Category.find_by(name: "Art").id))


# albujairi.category << Category.find_by(name: "Parks")
# diving.category << Category.find_by(name: "Diving")
# albalad_.category << Category.find_by(name: "Historical")
# edge.category << Category.find_by(name: "Hiking")
