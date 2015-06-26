class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name
      t.string :code
      t.integer :number
      t.integer :population
    end
  end
end
