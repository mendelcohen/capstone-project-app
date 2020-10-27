class User < ApplicationRecord
  has_many :goals

  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true 
  validates :email, presence: true, uniqueness: true 
  validates :password, presence: true
end
