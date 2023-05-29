class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_and_belongs_to_many :dogs

  validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :name, presence: true, length: { in: 3..20 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
