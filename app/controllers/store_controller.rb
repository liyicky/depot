class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @counter  = counter
  end

  def counter
    if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end

    return session[:counter]
  end

end
