class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def console_it
  end

  def links
  end
end
