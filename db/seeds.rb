# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

iata_codes = ['SFO', 'JFK', 'ATL', 'LAX', 'SJC', 'SAN', 'PHX', 'DEN', 'SEA', 'BOS', 'HNL', 'PDX']
airports = []

def seed_airports(code_array)
	airports = []
	code_array.each do |code|
		airport = Airport.create(iata_code:code)
		airports.push(airport)
	end
	return airports
end

def seed_flights(airports)
	airports.each do |airport|
		airports.each do |other_airport|
			if airport.iata_code != other_airport.iata_code
				#figure out seeding fake datetime and duration later
				Flight.create(from_airport_id: airport.id, to_airport_id: other_airport.id)
			end
		end
	end
end

all_airports = seed_airports(iata_codes)
seed_flights(all_airports)


