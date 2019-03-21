class ProductsController < ApplicationController


def index
@products = Product.page(params[:page]).per(3)

end

def bycategory
    @products = Product.page(params[:page]).per(3).where("category = 'Wooden Step'")

end

end