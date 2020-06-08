class User < ApplicationRecord
  validates :email, uniqueness: true
  has_secure_password
  has_many :favorites
  has_many :locations, through: :favorites
end
