ActiveAdmin.register User do

    permit_params :username, :password, :accesslevel, :city, :province

end
