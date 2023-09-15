class Api::V1::StaticsController < ApplicationController
  def index
    render json: [{"レスポンス": "確認"}]
  end
end
