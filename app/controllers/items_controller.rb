class ItemsController < ApplicationController
  before_action :set_sub
  before_action :set_item, except: [:index, :new, :create]
  def index
    @items = @department.items
  end

  def show
  end

  def new
    @item = @department.items.new
  end

  def create
    @item = @department.item.new(item_params)
    if @item.save
      redirect_to department_item
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_sub
    @department = Department.find(params[:department_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
