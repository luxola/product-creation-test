require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  should validate_inclusion_of(:state).in_array([:published, :unpublished])
end
