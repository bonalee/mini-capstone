class ProductsController < ApplicationController
  def donut_index
    @donuts = Product.all
    render "index.html.erb"
  end

  def donut_description
    donut_id = params[:id]
    @donut = Product.find_by(id: donut_id)
    render "info.html.erb"
  end
end