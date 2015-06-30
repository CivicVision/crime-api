require File.expand_path '../../spec_helper.rb', __FILE__

describe District do
  subject(:district) { District.new }
  it "is valid with a name and a code" do
    district = District.new(name: "District", code: "D1")
    expect(district).to be_valid
  end
  it "is invalid without a name" do
    district = District.new(name: nil)
    district.valid?
    expect(district.errors[:name]).to include("can't be blank")
  end
  it "is invalid without a district code" do
    district = District.new(code: nil)
    district.valid?
    expect(district.errors[:code]).to include("can't be blank")
  end
end

