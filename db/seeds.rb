Dog.destroy_all
User.destroy_all

p "1. CREATING DOGS"

dog1 = Dog.create({ name: "Ponchan",
    breed: "mix",
    age: 7,
    weight: 18 })

p "Created dog 1"
dog2 = Dog.create({ name: "Suchan",
    breed: "mix",
    age: 4,
    weight: 12 })

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

p "Created breakfast for dog 1"

full_breakfast = Care.create()
full_breakfast.meal = full
full_breakfast.dogs << dog2
full_breakfast.save

p "Created breakfast for dog 2"

p "- - - - - - -"

p "6. CREATING ESTABLISHMENTS"

vet = Establishment.create({ name: "Nakayamajuika Clinic",
  category: "vet",
  address: "6-1 Minamifukurocho, Nara, 630-8342",
  phone_number: "0742226049"
})

p "Created vet"
