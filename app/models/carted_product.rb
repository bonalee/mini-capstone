class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :user, optional: true
  validates :quantity, presence: true, numericality: true, length: { minimum: 0 }

end
