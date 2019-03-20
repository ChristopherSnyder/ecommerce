class ProductsController < ApplicationController


def index
@products = Product.page(params[:page]).per(3)

end

end