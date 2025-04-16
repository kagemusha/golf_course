class CreateAmenities < ActiveRecord::Migration[8.0]
  def change
    create_table :amenities do |t|
      t.string :name, null: false
      t.float :width
      t.float :length
      t.float :area
      t.integer :padding, default: 10, null: false
      t.integer :max_buildable, null: false
      t.integer :concurrent
      t.boolean :property, default: false

      t.timestamps
    end 
  end
end
