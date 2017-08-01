class Supplier < ApplicationRecord
  has_many :products
  validate :name, presence: true, uniqueness: true
  
end
