class ApplicationController < ActionController::Base
  private

  def require_signin
    return if current_user

    redirect_to signin_url, alert: 'Please sign in first!'
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_user?(user)
    current_user == user
  end

  helper_method :current_user, :current_user?
end
