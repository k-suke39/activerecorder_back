class Api::V1::PracticesController < ApplicationController
  def index
    work = Work.find_by(slug: params[:slug])
    practices = work.practices

    render json: practices
  end
end
