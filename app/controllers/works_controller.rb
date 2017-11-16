class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
    @categories = Category.all
    @users = User.all
  end

  def create
    @categories = Category.all
    @users = User.all
    @work = Work.new(work_params)
    if @work.save
      redirect_to category_path(@work.category_id)
    else
      render :new
    end
  end

  def edit
    @work = Work.find(params[:id])
    @categories = Category.all
    @users = User.all
  end

  def update
    @work= Work.find(params[:id])
    if @work.update(work_params)
      redirect_to work_path
    else
      render :edit
    end
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to categories_path
  end

private
  def work_params
    params.require(:work).permit(:name, :description, :image_url, :category_id, :user_id)
  end
end
