ActiveAdmin.register Product do

    permit_params :name, :category, :price, :image

end
