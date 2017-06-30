class HomeController < ApplicationController
  def home
    @products = Product.all
    @reviews = Review.all
  end
end
