class AdminpanelController < ApplicationController


    def index
        @needshipping = Order.where(shipped: [false, nil])
        @pastorders = Order.where('shipped')
    end

    def shiporder

        @order = Order.where('id = ?', params[:id] ).first
        @order.shipped = true
        @order.save

        redirect_to('/adminpanel')

    end
end
