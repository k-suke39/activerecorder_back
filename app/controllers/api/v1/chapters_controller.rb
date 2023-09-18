class Api::V1::ChaptersController < ApplicationController
  def index
    chapters = Chapter.where(slug: params[:slug])
    work = Work.find_by(slug: params[:slug])

    if chapters.present? && work.present?
      render json: { chapters: chapters, description: work.description }
    else
      render json: { error: 'Not Found' }, status: :not_found
    end
  end
end