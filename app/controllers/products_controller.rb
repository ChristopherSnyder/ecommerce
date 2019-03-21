class ProductsController < ApplicationController


def index
@products = Product.page(params[:page]).per(3)
@categories = Category.all

end

def bycategory
    @cat = Category.where('id = ?', params[:id]).first
    @products = Product.page(params[:page]).per(3).where('category = ?', @cat.name)

end

end