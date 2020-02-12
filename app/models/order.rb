class Order < ApplicationRecord
  # model association
  has_many :autoparts, dependent: :destroy

  # validations
  validates_presence_of :title, :created_by
end
