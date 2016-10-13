class CreateDives < ActiveRecord::Migration
  def change
    create_table :dives do |t|
      t.date :date
      t.time :time
      t.time :duration
      t.decimal :depth
      t.integer :dive_type
      t.integer :dive_buddy
      t.string :location
      t.integer :rating
      t.string :image_URL

      t.timestamps null: false
    end
  end
end
