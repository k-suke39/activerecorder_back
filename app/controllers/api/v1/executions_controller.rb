class Api::V1::ExecutionsController < ApplicationController
  def show
    query = eval(params[:active_record_string])
    render json: query
  end
end
