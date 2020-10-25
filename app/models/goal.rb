class Goal < ApplicationRecord
  has_many :steps
  belongs_to :category
  belongs_to :user
end
