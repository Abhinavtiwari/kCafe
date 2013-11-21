class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @order = Order.new
    @order.order_id = params[:order_id]
    @order.item_id = params[:item_id]
    @order.item_name = params[:item_name]
    @order.item_picture = params[:item_picture]
    @order.item_category = params[:item_category]
    @order.item = params[:item]
    @order.item_price = params[:item_price]
    
    if @order.save
      redirect_to orders_url
    else
      render 'new'
    end
  end

  def edit
    @order = Order.find_by(:id => params[:id])
  end

  def update
    @order = Order.find_by(:id => params[:id])
    @order.order_id = params[:order_id]
    @order.item_id = params[:item_id]
    @order.item_name = params[:item_name]
    @order.item_picture = params[:item_picture]
    @order.item_category = params[:item_category]
    @order.item = params[:item]
    @order.item_price = params[:item_price]
    
    if @order.save
      redirect_to orders_url
    else
      render 'new'
    end
  end

  def destroy
    @order = Order.find_by(:id => params[:id])
    @order.destroy
    redirect_to orders_url
  end
end
