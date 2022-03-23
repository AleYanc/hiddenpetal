class PagesController < ApplicationController

  def home
    @store_preview = Product.last(3)
    @frase = Frase.last
    @noticia = Notice.last
  end
  def store
    @products = Product.filter(params.slice(:category)).paginate(page: params[:page], per_page: 4).order(price: order_by)
  end
  def about
  end
  def working
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