class PagesController < ApplicationController
  def home
    @site = Site.new
    @peachlies = session[:peachlies] || {}
  end
end
