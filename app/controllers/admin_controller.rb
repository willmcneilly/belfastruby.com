class AdminController < ApplicationController
  before_filter :authenticate
  
  def index
    redirect_to(admin_posts_path)
  end
  
  private
  
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "password"
    end
  end

end
