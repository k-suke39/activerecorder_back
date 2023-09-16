class Api::V1::AnswersController < ApplicationController
  def check
    user_answer = eval(URI.decode_www_form_component(params[:user_answer]))
    answer = Practice.find_by(id: 1)
    render json: { result: user_input == answer }
  rescue => e
    render json: { result: false }
  end
end
