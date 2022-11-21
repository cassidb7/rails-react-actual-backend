class Api::V1::ProductsController < ApplicationController
  def index
    products = ProductsBlueprint.render Product.all, view: :normal
    render json: products
  end

  def show
    product = Product.find(params[:id])

    serialized_product = ProductsBlueprint.render product, view: :normal
    render json: serialized_product
  end

  def related
    product = Product.find(params[:id])

    related_products = ProductsBlueprint.render Product.where(category_id: product.id).limit(4), view: :normal
    render json: related_products
  end
end
