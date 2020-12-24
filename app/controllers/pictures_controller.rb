class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
    @products = Product.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.save
    
    if @picture.save
      redirect_to :root
    else
      render 'new'
    end
  end

  def edit 
    @picture = Picture.find(params[:id])
    @products = Product.all
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :desc, :photo)
  end
end
