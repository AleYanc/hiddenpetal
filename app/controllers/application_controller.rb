class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  before_action :last_marquee

  def last_marquee
    @last_marquee = Marquee.last
  end

  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:notice] = "You must be logged in to perform that action"
      redirect_to forbidden_path
    end
  end

  def require_admin_user
    if !current_user.admin?
      flash[:notice] = "You do not have enough authority to perform this action"
      redirect_to forbidden_path
    end
  end
end
