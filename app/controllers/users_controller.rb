class UsersController < ApplicationController


    def login


    end


    def processlogin
        if request.post?
            @givenuser =  params[:user][:user]
            @givenpass = params[:pass][:pass]
            redirect_to "/"
         end
        end


    def logout
        session[:current_user_name] = ""
        redirect_to "/"

    end

end
