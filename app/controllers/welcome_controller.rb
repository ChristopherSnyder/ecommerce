class WelcomeController < ApplicationController
  def index

    @homepage = Page.find(3)
  end
end
