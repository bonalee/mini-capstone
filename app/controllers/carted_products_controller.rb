class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @order = Order.create(
      user_id: params[:user_id],
      product_id: params[:product_id],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
      )

    redirect_to "/products"
    flash[:success] = "Added to cart!"
  end
end