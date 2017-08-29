class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protect_from_forgery with: :exception
  after_action :redirect_login
  before_action  if: :devise_controller?

  protected

  def authenticate_colaborador!
    redirect_to root_path unless user_signed_in? && current_user.is_colaborador?
  end

  def authenticate_admin!
    redirect_to root_path unless user_signed_in? && current_user.is_admin?
  end
end

def redirect_login
  return unless request.get?
  if request.path != '/users/sign_in' &&
      request.path != "/users/sign_up" &&
      request.path != "/users/password/new" &&
      request.path != "/users/password/edit" &&
      request.path != "/users/confirmation" &&
      request.path != "/users/sign_out" &&
      !request.xhr? # don't store ajax calls
  end
end

