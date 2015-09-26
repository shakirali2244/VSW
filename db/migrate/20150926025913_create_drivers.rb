class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :location
      t.float  :longitude
      t.float  :latitude

      t.timestamps null: false
    end
  end
end
