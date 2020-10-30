class User < ApplicationRecord
  has_many :goals

  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, length: { minimum: 6 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :password, length: { minimum: 8 }
end
