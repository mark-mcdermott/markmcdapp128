class ApplicationController < ActionController::Base

  helper_method :current_user 
  helper_method :logged_in?
  helper_method :bootstrap_class_for

  def current_user
    @user = User.find_by_id(session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def bootstrap_class_for flash_type
    case flash_type
      when "success"
        "alert-success"
      when "error"
        "alert-danger"
      when "warning"
        "alert-warning"
      when "info"
        "alert-info"
      else
        flash_type.to_s
    end
  end

end
