class Inventory::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.create(course_params)
    redirect_to root_path (@item)
  end

  def show
    @item = Item.find(params[:id])
  end

  private

  def course_params
    params.require(:item).permit(:barcode, :size, :cost)
  end
end
