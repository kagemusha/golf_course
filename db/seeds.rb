def find_or_create_amenity(attrs)
  Amenity.find_or_create_by!(name: attrs[:name]) do |amenity|
    amenity.width = attrs[:width]
    amenity.length = attrs[:length]
    amenity.area = attrs[:area] if attrs.key?(:area)
    amenity.concurrent = attrs[:concurrent]
    amenity.property = attrs[:property]
  end
end

golf_course_attrs = { name: "Golf Course", length: 1000, width: 600, area: 5200000, property: true }
find_or_create_amenity(golf_course_attrs)

[
  { name: "store", width: 20, length: 30, concurrent: 50, property: false },
  { name: "basketball_court", width: 50, length: 94, concurrent: 10, property: false },
  { name: "pickleball_court", width: 20, length: 44, concurrent: 4, property: false },
  { name: "tennis_court", width: 36, length: 78, concurrent: 4, property: false },
  { name: "pool", width: 25, length: 50, concurrent: 20, property: false },
  { name: "baseball_field", width: 250, length: 250, concurrent: 18, property: false },
  { name: "track", width: 8, length: 400, concurrent: 100, property: false },
  { name: "soccer_field", width: 70, length: 110, concurrent: 22, property: false },
  { name: "museum", width: 100, length: 200, concurrent: 500, property: false },
  { name: "botanical_garden", width: 300, length: 400, concurrent: 200, property: false },
  { name: "apartment_building", width: 60, length: 200, concurrent: 150, property: false },
  { name: "school", width: 150, length: 300, concurrent: 500, property: false }
].each { |attrs| find_or_create_amenity(attrs) }

[
  { name: "Flamingo Park", length: 1000, width: 600, property: true },
  { name: "Botanical Gardens", length: 400, width: 300, property: true },
  { name: "The Bass", length: 250, width: 200, property: true },
  { name: "Lummus Park", length: 1500, width: 300, property: true },
  { name: "Mount Sinai", length: 800, width: 500, property: true }
].each { |attrs| find_or_create_amenity(attrs) }