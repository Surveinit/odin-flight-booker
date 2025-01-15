Airport.create!(
  [
    { airport_code: "BLR" },
    { airport_code: "BOM" },
    { airport_code: "PNQ" },
    { airport_code: "DEL" }
  ]
)

# Fetch airports
blr = Airport.find_by!(airport_code: "BLR")
bom = Airport.find_by!(airport_code: "BOM")
pnq = Airport.find_by!(airport_code: "PNQ")
del = Airport.find_by!(airport_code: "DEL")

Flight.create!(
  [
    {
      departure_airport: bom,
      arrival_airport: blr,
      start_datetime: DateTime.parse((DateTime.now + 2.days).to_s),
      duration: 3
    },

    {
      departure_airport: pnq,
      arrival_airport: bom,
      start_datetime: DateTime.parse((DateTime.now + 3.days).to_s),
      duration: 2
    }
  ]
)
