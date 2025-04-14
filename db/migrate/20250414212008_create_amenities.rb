class CreateAmenities < ActiveRecord::Migration[8.0]
  def change
    create_table :amenities do |t|
      t.string :name
      t.float :width
      t.float :length
      t.integer :concurrent

      t.timestamps
    end
  end
end
