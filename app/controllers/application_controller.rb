class ApplicationController < ActionController::Base
  protect_from_forgery

  def home

  end

  def admin_index
    render "admin_index", :layout => "admin"
  end

end
