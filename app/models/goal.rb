class Goal < ApplicationRecord
  has_many :steps
  belongs_to :category
  belongs_to :user

  # validates name, presence: true, length: { in: 2..25 }
  # validates :category_id, presence: true
  # validates :description, presence: true { minimum: 50 }
  # validates :begin_date, presence: true, numnericality: true
  # validates :end_date, presence: true, numnericality: true
end
