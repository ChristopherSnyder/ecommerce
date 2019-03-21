class WelcomeController < ApplicationController
  def index
    @homepage = Page.find(1)
  end
end
