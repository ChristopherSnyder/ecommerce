class CartController < ApplicationController
    def lowerquantity

        @item = Cart.where('id = ?', params[:id]).first
        @item.quantity -= 1
        @item.save

        redirect_to "/mycart"

    end
end
