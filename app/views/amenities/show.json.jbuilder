json.extract! @amenity, :id, :name, :width, :length, :area, :concurrent, :padding, :property, :max_buildable, :created_at, :updated_at
json.url amenity_url(@amenity, format: :json)
