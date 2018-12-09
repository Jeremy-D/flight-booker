class Flight < ApplicationRecord
	belongs_to :to_airport, class_name: :airport
	belongs_to :from_airport, class_name: :airport
end
