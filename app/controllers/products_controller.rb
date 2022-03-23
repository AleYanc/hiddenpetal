class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  before_action :require_user, except: [:showpub]

  # GET /products or /products.json
  def index
    @products = Product.all
  end

  def index_public
    @products = Product.filter(params.slice(:category))
  end

  # GET /products/1 or /products/1.json
  def show
  end

  def showpub
    @product = Product.find(params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
    @categories = Category.all
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:success] = "Producto creado con éxito"
      redirect_to @product
    else
      flash[:danger] = "Hubo un error al crear el producto. Error: #{@product.errors}"
      render :new
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    if @product.update(product_params)
      flash[:success] = "Producto actualizado con éxito"
      redirect_to @product
    else
      flash[:danger] = "Hubo un error al crear el producto. Error: #{@product.errors}"
      render 'new'
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    if @product.destroy
      flash[:success] = "El producto fue eliminado correctamente"
      redirect_to products_path

    else
      flash[:danger] = "Hubo un error al intentar eliminar el producto"
      redirect_to products_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :img, :price, :link, :description, :category_id, :stock)
    end
end
