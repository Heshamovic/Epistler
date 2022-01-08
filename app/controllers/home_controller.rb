class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "This is the greatest Mailer Evaaaaa"
  end

end
