class HomeController < ApplicationController
  def index
  	if logged_in?
  		redirect_to dashboard_index_path
  	end
  end
end
