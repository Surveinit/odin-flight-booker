class Airport < ApplicationRecord
  # Associations
  has_many(
    :departing_flights,
    class_name: "Flight",
    foreign_key: "departure_airport_id"
  )

  has_many(
    :arriving_flights,
    class_name: "Flight",
    foreign_key: "arrival_airport_id"
  )

  # Validations
  validates :airport_code, uniqueness: { case_sensitive: false }
end
