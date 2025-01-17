class Booking < ApplicationRecord
  belongs_to :Flight
  has_many :passengers, dependent: :destroy
  accepts_nested_attributes_for :passengers
end
