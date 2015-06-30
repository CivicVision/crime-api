require File.expand_path '../../spec_helper.rb', __FILE__

describe Crime do
  subject(:crime) { Crime.new }

  describe "#theft" do
    before :each do
      @theft1 = Crime.create(crime_type: "THEFT")
      @theft2 = Crime.create(crime_type: "THEFT")
      @theft3 = Crime.create(crime_type: "ARSENE")
    end
    it "returns all crimes with type of theft" do
      expect(Crime.theft).to include( @theft1, @theft2 )
    end

    it "does not return crimes without type of theft" do
      expect(Crime.theft).not_to include( @theft3 )
    end
  end
  describe "#aggregation_dow_hod" do
    before :each do
      @crime_1 = Crime.create(dow: 1, hour: 1)
      @crime_2 = Crime.create(dow: 1, hour: 1)
      @crime_3 = Crime.create(dow: 2, hour: 1)
      @crimes = Crime.dow_hod
    end

    it "returns count of aggregation" do
      expect(@crimes.first.dow).to eq(1)
      expect(@crimes.first.hour).to eq(1)
      expect(@crimes.first.count).to eq(2)
      expect(@crimes.last.count).to eq(1)
    end
  end
end

