class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.string :note
      t.string :startingpoint
      t.string :endingpoint
      t.datetime :startingtime
      t.datetime :endingtime
      t.references :manager, index: true, foreign_key: true
      t.references :driver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
