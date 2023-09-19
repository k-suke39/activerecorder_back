# frozen_string_literal: true

module Api
  module V1
    class PracticesController < ApplicationController
      def index
        work = Work.find_by(slug: params[:slug])
        practices = work.practices

        render json: practices
      end
    end
  end
end
