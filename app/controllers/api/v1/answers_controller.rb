class Api::V1::AnswersController < ApplicationController
  def check
    user_answer = eval(URI.decode_www_form_component(params[:user_answer]))
    answer = Practice.find_by(id: 1).answer
    question_answer = eval(answer)

    pp user_answer == question_answer
    render json: { result: user_answer == question_answer }
  rescue => e
    render json: { result: false }
  end
end
