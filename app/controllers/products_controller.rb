class ProductsController < ApplicationController
  def donut_index
    @donuts = Product.all
    render "index.html.erb"
  end

  def donut_show
    donut_id = params[:id]
    @donut = Product.find_by(id: donut_id)
    render "info.html.erb"
  end

  def new_donut
    render "request_creation.html.erb"
  end

  def donut_creation
    donut = Product.new(
      name: params[:form_name],
      price: params[:form_price],
      image: params[:form_image],
      description: params[:form_description]
      )
    donut.save

    redirect_to "/products"
    flash[:success] = "Donut added!"
  end

  def modify_donut
    donut_id = params[:id]
    @donut = Product.find_by(id: donut_id)
    render "edit_creation.html.erb"
  end

  def update_donut
    donut_id = params[:id]
    @donut = Product.find_by(id: donut_id)
    @donut.name = params[:form_name]
    @donut.price = params[:form_price]
    @donut.image = params[:form_image]
    @donut.description = params[:form_description]
    @donut.save

    redirect_to "/products/#{@donut.id}"
    flash[:success] = "Donut changed!"
  end

  def destroy_donut
    donut_id = params[:id]
    @donut = Product.find_by(id: donut_id)
    @donut.destroy
    redirect_to "/products"
    flash[:success] = "Donuted deleted!"
  end
end