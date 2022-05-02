class PagesController < ApplicationController

  def home
    @store_preview = Product.last(8)
    @home_categories = Category.all
    @home_banner_big = HomeBanner.where(screen_type: 'pantalla_grande').last
    @home_banner_phone = HomeBanner.where(screen_type: 'Celular').last
  end

  def store
    @products = Product.filter(params.slice(:category)).paginate(page: params[:page], per_page: 21).order(price: order_by)
    @categories = Category.all
  end

  def about
    @frase = Frase.last
    @noticia = Notice.last
  end

  def contact
  end

  def working
  end

  def gallery
    @reviews = Review.all
  end

  def forbidden
  end

  private
  def order_by
    if params[:order] == 'Mayor a menor'
      :desc
    elsif params[:order] == 'Menor a mayor'
      :asc
    else
      :asc
    end
  end
end