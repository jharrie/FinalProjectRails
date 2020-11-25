class CartController < ApplicationController
  def create
    id = params[:id].to_i
    session[:shopping_cart] << id unless session[:shopping_cart].include?(id)

    if session[:cart_quantity].map { |cart_item| cart_item["id"] }.include?(id)
      session[:cart_quantity] = session[:cart_quantity].map do |cart_item|
        cart_item["id"] == id ? { "id" => id, "quantity" => cart_item["quantity"] + 1 } : cart_item
      end
    else
      item_quantity = { "id" => id, "quantity" => 1 }
      session[:cart_quantity] << item_quantity
    end

    product = Product.find(id)
    flash[:notice] = "#{product.name} added to cart "

    redirect_to products_url
  end

  def destroy
    id = params[:id].to_i
    session[:shopping_cart].delete(id)

    product = Product.find(id)
    flash[:notice] = "#{product.name} removed from cart "

    redirect_to products_url
  end
end
