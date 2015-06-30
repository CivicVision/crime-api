require File.expand_path '../../spec_helper.rb', __FILE__

describe Community do
  subject(:community) { Community.new }
  it "is valid with a name and a code" do
    community = Community.new(name: "District", code: "D1")
    expect(community).to be_valid
  end
  it "is invalid without a name" do
    community = Community.new(name: nil)
    community.valid?
    expect(community.errors[:name]).to include("can't be blank")
  end
  it "is invalid without a community code" do
    community = Community.new(code: nil)
    community.valid?
    expect(community.errors[:code]).to include("can't be blank")
  end
end

