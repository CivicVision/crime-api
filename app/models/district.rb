class District < ActiveRecord::Base
  validates_presence_of :name, :code
  has_many :crimes
end
