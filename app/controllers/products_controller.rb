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

  def donut_creation
    donut = Product.new(
      name: params[:form_name],
      price: params[:form_price],
      image: params[:form_image],
      description: params[:form_description]
      )
    donut.save
    render "new_donut.html.erb"
  end

  def new_donut
    render "request_creation.html.erb"
  end
end