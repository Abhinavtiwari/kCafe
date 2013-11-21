class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @item = Item.new
    @item.weekday = params[:weekday]
    @item.item_name = params[:item_name]
    @item.item_picture = params[:item_picture]
    @item.item_category = params[:item_category]
    @item.item_price = params[:item_price]
    @item.float = params[:float]
    
    if @item.save
      redirect_to items_url
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find_by(:id => params[:id])
  end

  def update
    @item = Item.find_by(:id => params[:id])
    @item.weekday = params[:weekday]
    @item.item_name = params[:item_name]
    @item.item_picture = params[:item_picture]
    @item.item_category = params[:item_category]
    @item.item_price = params[:item_price]
    @item.float = params[:float]
    
    if @item.save
      redirect_to items_url
    else
      render 'new'
    end
  end

  def destroy
    @item = Item.find_by(:id => params[:id])
    @item.destroy
    redirect_to items_url
  end
end
