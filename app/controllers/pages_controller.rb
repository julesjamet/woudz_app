class PagesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def contact
  end

  def about
  end
end
