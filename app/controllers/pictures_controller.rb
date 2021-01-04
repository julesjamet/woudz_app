class PicturesController < ApplicationController
  
  def index
    @pictures = Picture.all
    render :layout => "dashboard"
  end
  
  def show
    @picture = Picture.find(params[:id])
    @products = @picture.products 
  end

  def new
    @picture = Picture.new
    render :layout => "dashboard"
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
    render :layout => "dashboard"
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.update(picture_params)
    if @picture.save
      redirect_to @picture
    else
      render 'edit'
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :desc, :photo, product_ids:[])
  end
end
