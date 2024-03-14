class  CategoryController   < ApplicationController
  def index
    @categories = Category.all
  end

  def list
    @products = Product.where(category_id: params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end
end
