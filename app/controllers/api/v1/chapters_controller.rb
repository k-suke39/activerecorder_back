# frozen_string_literal: true

module Api
  module V1
    class ChaptersController < ApplicationController
      def index
        chapters = Chapter.where(slug: params[:slug])
        work = Work.find_by(slug: params[:slug])

        if chapters.present? && work.present?
          render json: { chapters:, description: work.description }
        else
          render json: { error: 'Not Found' }, status: :not_found
        end
      end
    end
  end
end
