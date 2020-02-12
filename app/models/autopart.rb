class Autopart < ApplicationRecord
  # model association
  belongs_to :order
  has_many :reviews, dependent: :destroy

  # validation
  validates_presence_of :name, :description
end