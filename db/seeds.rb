[
  { name: "store", width: 20, length: 30, concurrent: 50 },
  { name: "basketball_court", width: 50, length: 94, concurrent: 10 },
  { name: "pickleball_court", width: 20, length: 44, concurrent: 4 },
  { name: "tennis_court", width: 36, length: 78, concurrent: 4 },
  { name: "pool", width: 25, length: 50, concurrent: 20 },
  { name: "baseball_field", width: 250, length: 250, concurrent: 18 },
  { name: "track", width: 8, length: 400, concurrent: 100 },
  { name: "soccer_field", width: 70, length: 110, concurrent: 22 },
  { name: "museum", width: 100, length: 200, concurrent: 500 },
  { name: "botanical_garden", width: 300, length: 400, concurrent: 200 },
  { name: "apartment_building", width: 60, length: 200, concurrent: 150 },
  { name: "school", width: 150, length: 300, concurrent: 500 }
].each do |attrs|
  Amenity.find_or_create_by!(name: attrs[:name]) do |amenity|
    amenity.width = attrs[:width]
    amenity.length = attrs[:length]
    amenity.concurrent = attrs[:concurrent]
  end
end

[
  { name: "Flamingo Park", length: 1000, width: 600 },
  { name: "Botanical Gardens", length: 400, width: 300 },
  { name: "The Bass", length: 250, width: 200 },
  { name: "Lummus Park", length: 1500, width: 300 },
  { name: "Mount Sinai", length: 800, width: 500 }
].each do |attrs|
  Property.find_or_create_by!(name: attrs[:name]) do |property|
    property.length = attrs[:length]
    property.width = attrs[:width]
  end
end