class CaresDog < ApplicationRecord
  belongs_to :dog
  belongs_to :care, inverse_of: :cares_dogs
  # with this code, whenever I add a care to a dog,
  # that dog automatically gets added to that specific care
  # dog.cares_dog.reload
end
