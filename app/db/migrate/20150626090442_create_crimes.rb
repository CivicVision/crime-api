class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.datetime :date
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :week
      t.integer :dow
      t.string :time
      t.integer :hour
      t.boolean :is_night
      t.string :crime_type
      t.string :address
      t.string :city
      t.string :segment_id
      t.string :desc
    end
  end
end
