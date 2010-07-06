class CategoriesController < ApplicationController
  def index
    @categories = Category.order('name asc')
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to categories_url
    else
      render :action => 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      redirect_to categories_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    # TODO: only root user can delete

    Category.find(params[:id]).destroy
    redirect_to categories_url
  end
end
