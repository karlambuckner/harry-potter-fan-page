class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @categoryWorks = @category.works.order(:name => :asc)
  end

end
