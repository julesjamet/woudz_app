class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :layout => "dashboard"
  end

  def new
    @product = Product.new
    render :layout => "dashboard"
  end

  def create
    @product = Product.new(product_params) 
    @product.save
    
    if @product.save
      redirect_to :root
    else
      render 'new'
    end

  end

  def edit
    @product = Product.find(params[:id])
    render :layout => "dashboard"
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    if @product.save
      redirect_to @product
    else
      render 'edit'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:title, :desc, :photo)
  end

end
