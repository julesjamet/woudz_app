class PagesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def contact
  end

  def about
  end

  def dashboard
    render :layout => "dashboard"
  end
end
