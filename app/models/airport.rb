class Airport < ApplicationRecord
	has_many :departing_flights, foreign_key: :to_airport_id, class_name: :flight
	has_many :arriving_flights, foreign_key: :from_airport_id, class_name: :flight
end
