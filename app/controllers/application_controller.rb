class ApplicationController < ActionController::Base
  before_action :authorize!

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: cookies.encrypted[:user_id])
  end

  def authorize!
    redirect_to sign_in_path unless current_user
  end
end
