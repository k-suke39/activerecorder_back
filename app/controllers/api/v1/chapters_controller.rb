# frozen_string_literal: true

module Api
  module V1
    class ChaptersController < ApplicationController
      def index
        chapters = Chapter.where(slug: params[:slug])
        work = Work.find_by(slug: params[:slug])

        render json: { chapters:, description: work.description }
      end
    end
  end
end
