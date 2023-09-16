class Api::V1::AnswersController < ApplicationController
  def execute
    user_input = eval(URI.decode_www_form_component(params[:user_input]))
    answer = Practice.find_by(id: 1)

    if user_input == answer
      render json:  { result: true }
    else
      render json:  { result: false }
    end
  end
end
