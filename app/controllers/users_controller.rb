class UsersController < ApplicationController


    def login


    end


    def processlogin
        if request.post?
            session[:current_user_name] =  params[:field1][:field1]
            redirect_to "/"
         end
        end

end
