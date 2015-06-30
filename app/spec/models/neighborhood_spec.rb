require File.expand_path '../../spec_helper.rb', __FILE__

describe Neighborhood do
  subject(:neighborhood) { Neighborhood.new }
  it "is valid with a name and a code" do
    neighborhood = Neighborhood.new(name: "District", code: "D1")
    expect(neighborhood).to be_valid
  end
  it "is invalid without a name" do
    neighborhood = Neighborhood.new(name: nil)
    neighborhood.valid?
    expect(neighborhood.errors[:name]).to include("can't be blank")
  end
  it "is invalid without a neighborhood code" do
    neighborhood = Neighborhood.new(code: nil)
    neighborhood.valid?
    expect(neighborhood.errors[:code]).to include("can't be blank")
  end
end

