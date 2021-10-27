class PagesController < ApplicationController
  def home
    @store_preview = Product.last(3)
    @frase = Frase.last
    @noticia = Notice.last
  end
  def store
    @products = Product.paginate(page: params[:page], per_page: 4)
  end
  def about
  end
  def working
  end
  def forbidden
  end
end