class Document < ApplicationRecord
  belongs_to :dog

  validates :name, presence: true
  validates :category, presence: true

end
