# puts "Cleaning the database..."
# Booking.destroy_all

# puts "Cleaning the database..."
# Offer.destroy_all

puts "Cleaning the database..."
User.destroy_all

puts 'Creating 8 users...'


# donor
user1 = User.create!(
  first_name: "Matthias",
  last_name: Faker::Name.last_name,
  address: "Leopoldstraße 49, Berlin",
  email: "user1@pfandme.com",
  password: "123456",
  phone_number: "030 36 05762",
  donor: true,
  photo_url: "https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=689&q=80"
)
# Karl is the collector/Pfander
user2 = User.create!(
  first_name: "Karl",
  last_name: Faker::Name.last_name,
  address: "Brandenburgische Straße 19, Berlin",
  email: "user2@pfandme.com",
  password: "123456",
  phone_number: "030 50 33435",
  donor: false,
  photo_url: "https://images.unsplash.com/photo-1629467057571-42d22d8f0cbd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=698&q=80",
  story: "After a period of street homelessness, Chris is rebuilding his life in different ways, including using his new-found confidence to volunteer"
)
# donor
user3 = User.create!(
  first_name: "Manu",
  last_name: Faker::Name.last_name,
  address: "Rudi-Dutschke-Straße 26, 10969, Berlin",
  email: "user3@pfandme.com",
  password: "123456",
  phone_number: "030 18 46635",
  donor: true,
  photo_url: "https://images.unsplash.com/photo-1630841539293-bd20634c5d72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80"
)

# donor
user4 = User.create!(
  first_name: "Toni",
  last_name: Faker::Name.last_name,
  address: "Karl-Marx-Straße 10, Berlin",
  phone_number: "030 85 54526",
  email: "user4@pfandme.com",
  password: "123456",
  donor: true,
  photo_url: "https://images.unsplash.com/photo-1624561272659-224ea122b2e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
  )

  # donor
user5 = User.create!(
  first_name: "Brittany",
  last_name: Faker::Name.last_name,
  address: "Frankfurter Allee 8, Berlin",
  phone_number: "030 96 05757",
  email: "user5@pfandme.com",
  password: "123456",
  donor: true,
  photo_url: "https://media.istockphoto.com/photos/blowing-kisses-picture-id510403008?k=20&m=510403008&s=612x612&w=0&h=bGF8hCVg4sDzbzogQ07fPo_V3vKFxP7A4BiKlHpMpEM="
  )

  # donor
user6 = User.create!(
  first_name: "Sabine",
  last_name: Faker::Name.last_name,
  address: "Waßmannsdorfer Chaussee 14, Berlin",
  phone_number: "030 86 94526",
  email: "user6@pfandme.com",
  password: "123456",
  donor: true,
  photo_url: "https://images.unsplash.com/photo-1602243688664-6afd37981acd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
  )

  # donor
user7 = User.create!(
  first_name: "Daniel",
  last_name: Faker::Name.last_name,
  address: "Genslerstraße 86, Berlin",
  phone_number: "030 86 94526",
  email: "user7@pfandme.com",
  password: "123456",
  donor: true,
  photo_url: "https://images.unsplash.com/photo-1519689373023-dd07c7988603?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
  )

  # donor
user8 = User.create!(
  first_name: "Stefan",
  last_name: Faker::Name.last_name,
  address: "Hermannstraße 86, Berlin",
  phone_number: "030 56 94526",
  email: "user8@pfandme.com",
  password: "123456",
  donor: true,
  photo_url: "https://images.unsplash.com/photo-1543965170-d57f3f5ecf20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1416&q=80"
  )


offer1 = Offer.create!(
  transportability: "Heavy",
  timeslot: "12:00-13:00",
  comment: "Its heavy",
  user_id: user1.id,
  plastic_bottles: 10,
  glass_bottles: 10,
  crates: 1,
  tip: 5,
  )

booking1 = Booking.create!(
  user_id: user2.id,
  offer_id: offer1.id,
  status: 0
)
