ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'shoulda'
require 'database_cleaner'


class ActiveSupport::TestCase

  def setup
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end

  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting

  # Add more helper methods to be used by all tests here...
end
