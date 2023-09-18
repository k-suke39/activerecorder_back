class Api::V1::StaticsController < ApplicationController
  def index
    chapter_11 = Chapter.find_by(id: 11)
    chapter_11.delete
    chapter_12 = Chapter.find_by(id: 12)
    chapter_12.delete
    chapter_13 = Chapter.find_by(id: 13)
    chapter_13.delete
    chapter_6 = Chapter.find_by(id: 6)
    chapter_6.delete
    chapter_7 = Chapter.find_by(id: 7)
    chapter_7.delete
    chapter_8 = Chapter.find_by(id: 8)
    chapter_8.delete

    render json: { true: true }
    
  rescue StandardError => e
    render json: { error: e.message }
  end
end
