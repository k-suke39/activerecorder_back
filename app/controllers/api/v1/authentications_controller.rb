# frozen_string_literal: true

module Api
  module V1
    class AuthenticationsController < ApplicationController
      def create
        authentication_user = Authentication.find_or_create_by(provider: params[:provider], uid: params[:uid],
                                                               name: params[:name], email: params[:email], role: 'general')
        if authentication_user
          head :ok
        else
          render json: { error: 'ログインに失敗しました' }, status: :unprocessable_entity
        end
      rescue StandardError => e
        render json: { error: e.message }, status: :internal_server_error
      end
    end
  end
end
