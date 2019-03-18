ActiveAdmin.register Order do

    permit_params :productid, :productname, :customerid, :quantity, :subtotal, :taxrate, :total, :shipped

end
