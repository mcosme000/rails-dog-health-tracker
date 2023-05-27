class Basic < ApplicationRecord
  belongs_to :dog

  validates :category, presence: :true

end
