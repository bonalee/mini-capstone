class Product < ApplicationRecord
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
