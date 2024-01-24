# frozen_string_literal: true

module Api
  module V1
    class ExecutionsController < Api::V1::ApplicationController
      before_action :decode_and_check_input, only: %i[index check sql]

      def index
        render json: Execution.execute_and_rescue(@input_string)
      end

      def check
        Execution.check_strings(@input_string)
        user_answer = Execution.execute_and_rescue(@input_string)
        answer = Practice.find_by(id: params[:practice_id]).answer
        question_answer = Execution.execute_and_rescue(answer)

        render json: { result: user_answer == question_answer }
      end

      def sql
        render json: Execution.get_sql_query(@input_string, binding)
      end

      private

      def decode_and_check_input
        @input_string = URI.decode_www_form_component(params[:active_record_string])
        Execution.check_strings(@input_string)
      end
    end
  end
end
