class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_is_admin
    if !current_user.admin?
      redirect_to root_path, alert: "你没有权限进行此操作。"
    end
  end

  def require_is_website_admin
    if !current_user.website_admin?
      redirect_to root_path, alert: "你没有权限进行此操作。"
    end
  end
end
