require 'rack/test'
require 'rspec'
require 'pry'
require 'database_cleaner'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../server.rb', __FILE__

RSpec.configure do |config|
  def app() Sinatra::Application end
  config.include Rack::Test::Methods
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
