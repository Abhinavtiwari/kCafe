class OrdersummariesController < ApplicationController

  def index
    @ordersummaries = Ordersummary.all
  end

  def show
    @ordersummary = Ordersummary.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @ordersummary = Ordersummary.new
    @ordersummary.order_date = params[:order_date]
    @ordersummary.total_bill = params[:total_bill]
    @ordersummary.student_id = params[:student_id]
    @ordersummary.order_status = params[:order_status]
    
    if @ordersummary.save
      redirect_to ordersummaries_url
    else
      render 'new'
    end
  end

  def edit
    @ordersummary = Ordersummary.find_by(:id => params[:id])
  end

  def update
    @ordersummary = Ordersummary.find_by(:id => params[:id])
    @ordersummary.order_date = params[:order_date]
    @ordersummary.total_bill = params[:total_bill]
    @ordersummary.student_id = params[:student_id]
    @ordersummary.order_status = params[:order_status]
    
    if @ordersummary.save
      redirect_to ordersummaries_url
    else
      render 'new'
    end
  end

  def destroy
    @ordersummary = Ordersummary.find_by(:id => params[:id])
    @ordersummary.destroy
    redirect_to ordersummaries_url
  end
end
