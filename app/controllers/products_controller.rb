class ProductsController < ApplicationController


def index
@products = Product.page(params[:page]).per(3)
@categories = Category.all

end

def bycategory
    @categories = Category.all
    @cat = Category.where('id = ?', params[:id]).first
    @products = Product.page(params[:page]).per(3).where('category = ?', @cat.name)

end


def show
    @categories = Category.all
    @prod = params[:id]
    @products = Product.page(params[:page]).per(3).where('id = ?', @prod)

end


def search

end


def findsearch

    @searchterms = params[:search][:search]
    @category = params[:post][:category]

    @products = Product.where('category = ?', @category).where('name LIKE ?', "%#@searchterms%")


end

end