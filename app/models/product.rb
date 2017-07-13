class Product < ApplicationRecord
  def tax
    return price.to_f * 0.09
  end

  def total
    return price.to_f + tax
  end
end
