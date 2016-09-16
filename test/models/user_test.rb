require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should validate_inclusion_of(:name).in_array(['supply_chain', 'merchandiser', 'admin'])
end
