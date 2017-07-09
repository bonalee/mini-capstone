class ProductsController < ApplicationController
  def donut_index
    @donuts = Product.all
    render "index.html.erb"
  end

  def info
    donut_info = params[:name]
    @donut = Product.find_by(id: recipe_id)
    render "info.html.erb"
  end
end