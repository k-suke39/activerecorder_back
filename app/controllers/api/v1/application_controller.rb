# frozen_string_literal: true

module Api
  module V1
    class ApplicationController < ActionController::API
      def current_user
        @current_user ||= User.find_by(id: params[:user_id])
      end
    end
  end
end
