class Review < ApplicationRecord
  # model association
  belongs_to :autopart

  # validation
  validates_presence_of :name, :review
end
