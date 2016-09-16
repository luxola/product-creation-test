class Product < ApplicationRecord
  validates_inclusion_of :state, in: ['published', 'unpublished']
end
