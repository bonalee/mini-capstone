class OrdersController < ApplicationController
  def new
    render ''
  end

  def create
    order = Order.new(
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
    )
  end
end
