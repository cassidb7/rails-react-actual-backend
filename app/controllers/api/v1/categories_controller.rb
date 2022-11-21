class Api::V1::CategoriesController < ApplicationController
  def index
    categories = CategoriesBlueprint.render Category.all, view: :normal
    render json: categories
  end

  def create
    category = Category.create(category_params)

    if category.save
      render json: category
    else

    end
  end

  def show
    category = Category.find(params[:id])
    render json: category
  end

  def all_products
    category = Category.find(params[:id])
    category_products = CategoriesBlueprint.render category, view: :extended

    render json: category_products
  end

  private

  def category_params
    params.permit(:title, :image_url)
  end
end
