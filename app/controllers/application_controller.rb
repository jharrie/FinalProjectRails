class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :init_session
  helper_method :cart

  def init_session
    session[:shopping_cart] ||= []
    session[:cart_quantity] ||= []

    @users_cart = User.all
    @provinces_cart = Province.all
  end

  def cart
    # return a collection product objects based on the product_id in the cart
    Product.find(session[:shopping_cart])
  end

  def final_cart
    session[:final_cart] = []
    session[:shopping_cart].map do |final|
      quantity_complete = session[:shopping_cart][final["id"]]
      finish = final.map { |id, quantity| [Product.find(id.to_i), quantity_complete["quantity"]] }.to_h
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name address city postal province_id])
  end
end
