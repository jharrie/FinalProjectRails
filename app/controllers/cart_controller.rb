class CartController < ApplicationController
  def create
    id = params[:id].to_i
    session[:shopping_cart] << id
    redirect_to root_path
  end

  def destroy; end
end
