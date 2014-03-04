class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    session[:user_id] = User.first.id
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
end
