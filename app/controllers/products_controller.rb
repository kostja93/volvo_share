class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def buy
    @product = Product.find(product_id)
    if (current_user.karma - @product.price) >= 0
      current_user.products << @product
      current_user.karma -= @product.price
      current_user.save
    end

    redirect_to profile_path(current_user)
  end

  private

  def product_params
    params.permit(:product_id).to_h
  end

  def product_id
    product_params[:product_id]
  end
end
