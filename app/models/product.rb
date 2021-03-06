class Product < ApplicationRecord
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  belongs_to :orders
  belongs_to :supplier
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, uniqueness: true
  validates :description, presence: true, lengeth: { maximum: 500 }

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