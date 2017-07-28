class Order < ApplicationRecord
  belongs_to :products, optional: true
  belongs_to :user, optional: true
end
