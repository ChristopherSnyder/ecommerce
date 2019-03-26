class UsersController < ApplicationController


    def login


    end


    def processlogin
        if request.post?
            @givenuser =  params[:user][:user]
            @givenpass = params[:pass][:pass]


            @user = User.where('username = ?', @givenuser).first
            if @user
                if @user.password = @givenpass
                session[:current_user_name] = @user.username
                redirect_to "/"
                end

            else
                redirect_to "/login/", notice: "Invalid user or password"
            end
        end
    end





    def logout
        session[:current_user_name] = ""
        redirect_to "/"

    end

end
