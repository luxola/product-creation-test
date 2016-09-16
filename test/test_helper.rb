ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

require 'rails/test_help'
require 'shoulda'

DatabaseCleaner.strategy = :transaction

class Minitest::Test
  include FactoryGirl::Syntax::Methods

  def setup
    super
    DatabaseCleaner.start
  end

  def teardown
    super
    DatabaseCleaner.clean
  end
end
