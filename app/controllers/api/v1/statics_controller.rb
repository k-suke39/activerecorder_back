class Api::V1::StaticsController < ApplicationController
  def index
    render json: {"response": "確認"}
  end
end
