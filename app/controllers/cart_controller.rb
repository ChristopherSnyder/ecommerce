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


    def additem
        @product = Product.where('id = ?', params[:id]).first

        @item = Cart.new
        @item.user = session[:current_user_id]
        @item.product = @product.id
        @item.quantity = 1
        @item.save

        redirect_to "/products"
    end


    def checkout
        @cart = Cart.where('user = ?', session[:current_user_id])
        @province = session[:current_user_province]
        @taxrate = Province.where('name = ?', @province).first.taxrate

        @cart.each do |item|

            @order = Order.new

            @order.productid = item.id

            @product = Product.where('id = ?', item.id).first

            @order.productname = @product.name
            @order.customerid = session[:current_user_id]
            @order.quantity = item.quantity
            @order.subtotal = @product.price * @order.quantity
            @order.taxrate = @order.subtotal * @taxrate
            @order.total = @order.subtotal + @order.taxrate
            @order.save
            Cart.delete(item.id)
        end

    end
end
