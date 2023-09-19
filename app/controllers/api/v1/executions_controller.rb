class Api::V1::ExecutionsController < Api::V1::ApplicationController
  before_action :decode_and_check_input, only: [:index, :check]

  def index
    render json: execute_and_rescue(@input_string)
  end

  def check 
    user_answer = execute_and_rescue(@input_string)
    answer = Practice.find_by(id: params[:practice_id]).answer
    question_answer = execute_and_rescue(answer)

    render json: { result: user_answer[:result] == question_answer[:result] }
  end

  private

  def decode_and_check_input
    @input_string = URI.decode_www_form_component(params[:active_record_string])
    check_strings(@input_string, forbidden_string)
  end

  def execute_input(input)
    eval(input) # evalの使用はセキュリティ上のリスクがあります。
  end

  def execute_and_rescue(input)
    begin
      { result: execute_input(input) }
    rescue => e
      { result: "実行できませんでした。エラー: #{e.message}" }
    end
  end

  def check_strings(input, strings)
    strings.each do |s|
      if input.include?(s)
        raise "禁止されている文字列が含まれています：#{s}"
      end
    end
  end

  def forbidden_string
    # 禁止されている文字列のリストはそのままです。
  end
end