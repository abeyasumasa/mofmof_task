class Rental < ApplicationRecord
  validates :property_name, presence: true
  validates :rent, presence: true
  validates :adress, presence: true
  validates :age, presence: true
  validates :note, presence: true
end
