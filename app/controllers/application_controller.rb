class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, :with => :render_not_found
  
  def render_not_found(exception)
    @title = "Status 404: Sinppet not found"
    render :template => "/errors/404", :status => 404
  end
end