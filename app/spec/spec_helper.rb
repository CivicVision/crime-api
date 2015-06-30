require 'rack/test'
require 'rspec'
require 'pry'
require 'database_cleaner'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../server.rb', __FILE__


module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure do |config|

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end

end
