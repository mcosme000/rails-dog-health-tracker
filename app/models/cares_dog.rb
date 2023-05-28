class CaresDog < ApplicationRecord
  belongs_to :dog
  belongs_to :care
end
