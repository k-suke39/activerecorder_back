class Api::V1::ApplicationController < ActionController::API
  include CanCan::ControllerAdditions

  def current_user
    @current_user ||= User.find_by(id: params[:user_id])
  end
end