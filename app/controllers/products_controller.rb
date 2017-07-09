class ProductsController < ApplicationController
  def donut_index
    @donuts = Product.all
    render "index.html.erb"
  end
end