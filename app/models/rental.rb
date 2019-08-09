class Rental < ApplicationRecord
  validates :property_name, presence: true
  validates :rent, presence: true
  validates :adress, presence: true
  validates :age, presence: true
  validates :note, presence: true
  has_many :stations,dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy:true
end
