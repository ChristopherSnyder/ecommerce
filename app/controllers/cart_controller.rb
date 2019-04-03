class CartController < ApplicationController
    def lowerquantity

        @item = Cart.where('id = ?', params[:id]).first
        @item.quantity -= 1

        if @item.quantity <= 0
            Cart.delete(@item.id)
        else
            @item.save
        end


        redirect_to "/mycart"

    end


    def increasequantity
        @item = Cart.where('id = ?', params[:id]).first
        @item.quantity += 1
        @item.save
        redirect_to "/mycart"
    end


    def removeitem
        @item = Cart.where('id = ?', params[:id]).first
        @item.quantity += 1
        Cart.delete(@item.id)
        redirect_to "/mycart"

    end
end
