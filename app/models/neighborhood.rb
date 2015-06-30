class Neighborhood < ActiveRecord::Base
  validates_presence_of :name, :code
  has_many :crimes
end
