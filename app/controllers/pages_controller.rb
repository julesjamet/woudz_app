class PagesController < ApplicationController
  def index
    @products = Product.all
  end

  def contact
  end

  def about
  end
end
