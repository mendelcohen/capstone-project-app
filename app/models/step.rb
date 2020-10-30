class Step < ApplicationRecord
  belongs_to :goal

  validates :date, presence: true, numnericality: true
end
