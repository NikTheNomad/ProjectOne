class OrdersController < ApplicationController

  def index
    @orders = Order.all
    # respond_with @order
  end

  def show
    order = Order.find(order_params[:id])
    # respond_with @order
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    # respond_with @order

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully added.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_with Order.destroy(params[:id])
  end

private

def order_params
      params.require(:order).permit(:name, :description, :image_url, :color)
  end

end