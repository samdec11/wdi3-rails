class HomeController < ApplicationController
  def index
    @products = Product.filtered
  end
end