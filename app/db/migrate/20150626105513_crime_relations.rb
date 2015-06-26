class CrimeRelations < ActiveRecord::Migration
  def change
    add_reference :crimes, :neighborhood, index: true, foreign_key: true
    add_reference :crimes, :community, index: true, foreign_key: true
    add_reference :crimes, :district, index: true, foreign_key: true
  end
end
