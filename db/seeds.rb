# puts "Cleaning the database..."
# Booking.destroy_all

# puts "Cleaning the database..."
# Offer.destroy_all

puts "Cleaning the database..."
User.destroy_all

puts 'Creating 8 users...'

# donor
user1 = User.new(
  first_name: "Matthias",
  last_name: Faker::Name.last_name,
  address: "Leopoldstraße 49, Berlin",
  email: "user1@pfandme.com",
  password: "123456",
  phone_number: "030 36 05762",
  donor: true
)
 user1.photo.attach(io: File.open('./app/assets/images/user_images/user1.jpeg'), filename: 'user1.jpeg', content_type: 'image/jpeg')
 user1.save!

# Karl is the collector/Pfander
user2 = User.new(
  first_name: "Karl",
  last_name: Faker::Name.last_name,
  address: "Brandenburgische Straße 19, Berlin",
  email: "user2@pfandme.com",
  password: "123456",
  phone_number: "030 50 33435",
  donor: false,
  story: "Hi there! I'm Karl 😊
  After a period of homelessness, I'm trying to rebuild my life while volunteering at a homeless shelter. Thanks for your tips and donations. It helps me and the shelter 😌"
)
 user2.photo.attach(io: File.open('./app/assets/images/user_images/user2.jpeg'), filename: 'user2.jpeg', content_type: 'image/jpeg')
 user2.save!
# donor
user3 = User.new(
  first_name: "Manu",
  last_name: Faker::Name.last_name,
  address: "Rudi-Dutschke-Straße 26, 10969, Berlin",
  email: "user3@pfandme.com",
  password: "123456",
  phone_number: "030 18 46635",
  donor: true,
)
 user3.photo.attach(io: File.open('./app/assets/images/user_images/user3.jpeg'), filename: 'user3.jpeg', content_type: 'image/jpeg')
 user3.save!

# donor
user4 = User.new(
  first_name: "Toni",
  last_name: Faker::Name.last_name,
  address: "Karl-Marx-Straße 10, Berlin",
  phone_number: "030 85 54526",
  email: "user4@pfandme.com",
  password: "123456",
  donor: true,
)
 user4.photo.attach(io: File.open('./app/assets/images/user_images/user4.jpeg'), filename: 'user4.jpeg', content_type: 'image/jpeg')
 user4.save!

# donor
user5 = User.new(
  first_name: "Brittany",
  last_name: Faker::Name.last_name,
  address: "Frankfurter Allee 8, Berlin",
  phone_number: "030 96 05757",
  email: "user5@pfandme.com",
  password: "123456",
  donor: true,
)
 user5.photo.attach(io: File.open('./app/assets/images/user_images/user5.jpeg'), filename: 'user5.jpeg', content_type: 'image/jpeg')
 user5.save!

# donor
user6 = User.new(
  first_name: "Sabine",
  last_name: Faker::Name.last_name,
  address: "Waßmannsdorfer Chaussee 14, Berlin",
  phone_number: "030 86 94526",
  email: "user6@pfandme.com",
  password: "123456",
  donor: true,
)
 user6.photo.attach(io: File.open('./app/assets/images/user_images/user6.jpeg'), filename: 'user6.jpeg', content_type: 'image/jpeg')
 user6.save!

  # donor
user7 = User.new(
  first_name: "Daniel",
  last_name: Faker::Name.last_name,
  address: "Genslerstraße 86, Berlin",
  phone_number: "030 86 94526",
  email: "user7@pfandme.com",
  password: "123456",
  donor: true,
  )

 user7.photo.attach(io: File.open('./app/assets/images/user_images/user7.jpeg'), filename: 'user7.jpeg', content_type: 'image/jpeg')
 user7.save!


  # donor
user8 = User.new(
  first_name: "Stefan",
  last_name: Faker::Name.last_name,
  address: "Hermannstraße 86, Berlin",
  phone_number: "030 56 94526",
  email: "user8@pfandme.com",
  password: "123456",
  donor: true,
)
 user8.photo.attach(io: File.open('./app/assets/images/user_images/user8.jpeg'), filename: 'user8.jpeg', content_type: 'image/jpeg')
 user8.save!

offer1 = Offer.create!(
  timeslot: "12:00-13:00",
  comment: "Its heavy",
  user_id: user7.id,
  plastic_bottles: 10,
  glass_bottles: 20,
  crates: 1,
  tip: 10
)

offer2 = Offer.create!(
  transportability: "Heavy",
  timeslot: '09.00 - 10.00',
  comment: "Its heavy",
  user_id: user8.id,
  plastic_bottles: 5,
  glass_bottles: 30,
  crates: 1,
  tip: 15
)

offer4 = Offer.create!(
  timeslot: '12.00 - 13.00',
  comment: "You should bring one or two big 🛍️ to carry all the bottles.",
  user_id: user5.id,
  plastic_bottles: 50,
  glass_bottles: 10,
  crates: 0,
  tip: 15
)

offer5 = Offer.create!(
  timeslot: '14.00 - 15.00',
  comment: "We had a huge bachelorette party last night 🥳 There are a whole bunch of bottles waiting to be picked up. See you soon!",
  user_id: user6.id,
  plastic_bottles: 100,
  glass_bottles: 10,
  crates: 3,
  tip: 5
)

offer6 = Offer.create!(
  timeslot: '13.00 - 14.00',
  comment: "Please bring a few large bags with you to carry the bottles more easily.",
  user_id: user7.id,
  plastic_bottles: 50,
  glass_bottles: 20,
  crates: 0,
  tip: 5
)

offer7 = Offer.create!(
  timeslot: '10.00 - 11.00',
  comment: "It might be a bit heavy. Please bring your own bags or a 🛒. Bis bald!",
  user_id: user8.id,
  plastic_bottles: 50,
  glass_bottles: 20,
  crates: 0,
  tip: 10
)

booking1 = Booking.create!(
  user_id: user2.id,
  offer_id: offer1.id,
  status: :in_progress
)

booking2 = Booking.create!(
  user_id: user2.id,
  offer_id: offer5.id,
  status: :completed
)

offer8 = Offer.create!(
  timeslot: '10.00 - 11.00',
  comment: "It might be a bit heavy. Please bring your own bags or a 🛒. Bis bald!",
  user_id: user2.id,
  plastic_bottles: 50,
  glass_bottles: 20,
  crates: 0,
  tip: 10
)

offer9 = Offer.create!(
  timeslot: '10.00 - 11.00',
  comment: "It might be a bit heavy. Please bring your own bags or a 🛒. Bis bald!",
  user_id: user2.id,
  plastic_bottles: 50,
  glass_bottles: 20,
  crates: 0,
  tip: 10
)
