class OrdersController < ApplicationController
  def create
    @order = Order.create(
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: 0,
      tax: 0,
      total: 0
    )
    redirect_to "/products/<%= @donut.id %>"
    flash[:success] = "Cart has been updated!"
  end
end