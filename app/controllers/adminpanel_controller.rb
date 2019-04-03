class AdminpanelController < ApplicationController


    def index
        @needshipping = Order.where(shipped: [false, nil])
        @pastorders = Order.all




    end
end
