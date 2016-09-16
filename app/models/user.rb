class User < ApplicationRecord
  validates_inclusion_of :name, in: ['supply_chain', 'merchandiser', 'admin']
end
