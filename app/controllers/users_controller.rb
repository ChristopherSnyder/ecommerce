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
                session[:current_user_id] = @user.id
                session[:current_user_level] = @user.accesslevel
                session[:current_user_province] = @user.province

                redirect_to "/"
                end

            else
                redirect_to "/login/", notice: "Invalid user or password"
            end
        end
    end





    def logout
        session[:current_user_name] = ""
        session[:current_user_id] = ""
        session[:current_user_level] = ""
        session[:current_user_province] = ""
        redirect_to "/"

    end


    def register
        @province = Province.all

    end


    def processregister

        @givenuser = params[:user][:user]
        @givenpass = params[:pass][:pass]
        @givencity = params[:city][:city]

        @givenprovince = params[:post][:province]
        @givenprovince = Province.find(@givenprovince)
        @givenprovince = @givenprovince.name


        @newuser = User.new
        @newuser.username = @givenuser
        @newuser.password = @givenpass
        @newuser.city = @givencity
        @newuser.province = @givenprovince
        @newuser.accesslevel = 1
        @newuser.save

        session[:current_user_name] = @newuser.username
        session[:current_user_id] = @newuser.id
        session[:current_user_level] = @newuser.accesslevel
        session[:current_user_province] = @newuser.province

        redirect_to "/"


    end

end
