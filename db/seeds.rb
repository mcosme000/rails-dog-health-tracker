Dog.destroy_all
User.destroy_all

p "1. CREATING DOGS"

dog1 = Dog.create({
    name: "Ponchan",
    breed: "mix",
    age: 7,
    weight: 18,
    birthday: '2016/07/06' })

p "Created dog 1"
dog2 = Dog.create({
    name: "Suchan",
    breed: "mix",
    age: 4,
    weight: 12,
    birthday: '2018/11/20'})

p "Created dog 2"

p "- - - - - - -"

p "2. CREATING USERS"

user1 = User.create({ name: "Maria",
    email: "maria@email.com",
    password: 123456 })

p "Created user 1"

user2 = User.create({ name: "Yu",
    email: "yu@email.com",
    password: 123456 });

p "Created user 2"

p "- - - - - - -"

p "3. ADDING DOGS TO USERS"

user1.dogs << dog1
user1.dogs << dog2
user2.dogs << dog1
user2.dogs << dog2

p "- - - - - - -"

p "4. CREATING MEALS"

half = Meal.create({ category: "dog food",
  quantity: 30
})

p "Created half meal"


regular = Meal.create({ category: "dog food",
  quantity: 60
})

p "Created regular meal"


full = Meal.create({ category: "dog food",
  quantity: 100
})

p "Created full meal"

p "- - - - - - -"

p "5. CREATING FEDS"

half_breakfast = Care.create()
half_breakfast.meal = half
half_breakfast.dogs << dog1
half_breakfast.save


p "6. CREATING ESTABLISHMENTS"

cities = ['Tokyo', 'Osaka', 'Wakayama', 'Nara', 'Kyoto', 'Kanazawa', 'Kobe', 'Ibaraki', 'Sapporo']

20.times do
  p Faker::Company.name
  p "#{Faker::Address.postcode}, #{Faker::Address.street_address} #{Faker::Address.building_number}, #{cities.sample}"
  Establishment.create(
    name: Faker::Company.name,
    category: Faker::Company.industry,
    address: "#{Faker::Address.postcode}, #{Faker::Address.street_address} #{Faker::Address.building_number}, #{cities.sample}",
    phone_number: "12345678"
  )
  p "created!"
end

establishments = Establishment.all
p establishments.sample
dogs = Dog.all


p "7. CREATING APPOINTMENTS"

10.times do
  Appointment.create(
    establishment_id: establishments.sample.id
  )
end
