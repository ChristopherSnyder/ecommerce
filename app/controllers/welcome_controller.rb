class WelcomeController < ApplicationController
  def index
    session[:current_user_name] = ""
    @homepage = Page.find(3)
  end
end
