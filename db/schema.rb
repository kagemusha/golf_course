ActiveRecord::Schema[8.0].define(version: 2025_04_14_212008) do
  create_table "amenities", force: :cascade do |t|
    t.string "name"
    t.float "width"
    t.float "length"
    t.float "area"
    t.integer "padding"
    t.integer "max_buildable"
    t.integer "concurrent"
    t.boolean "property"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
