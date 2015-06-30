require File.expand_path '../spec_helper.rb', __FILE__

describe "Server" do

  describe "/" do
    it "echos Crime San Diego" do
      get "/"
      expect(last_response.body).to include "Crime San Diego API"
    end
  end
end
