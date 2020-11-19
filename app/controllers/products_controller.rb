class ProductsController < ApplicationController
  before_action :set_product, only: %i[show]

  # TODO: NEED TO ADD RANSACK AND PAGINATION.
  # GET /products
  # GET /products.json
  def index
    @search = Product.ransack(params[:q])
    @products = @search.result.page(params[:page])
    @search.build_condition
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def product_params
    params.require(:product).permit(:name, :price, :discount, :discount_amount, :stock, :cart_id)
  end
end
