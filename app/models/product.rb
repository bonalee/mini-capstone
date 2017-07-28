class Product < ApplicationRecord
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  belongs_to :supplier
  belongs_to :order

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end

  def discounted?
    price < 1
  end
end
