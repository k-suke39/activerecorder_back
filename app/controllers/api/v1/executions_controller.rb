# frozen_string_literal: true

module Api
  module V1
    class ExecutionsController < Api::V1::ApplicationController
      before_action :decode_and_check_input, only: %i[index check]

      def index
        render json: execute_and_rescue(@input_string)
      end

      def check
        user_answer = execute_and_rescue(@input_string)
        answer = Practice.find_by(id: params[:practice_id]).answer
        question_answer = execute_and_rescue(answer)

        render json: { result: user_answer == question_answer }
      end

      private

      def decode_and_check_input
        @input_string = URI.decode_www_form_component(params[:active_record_string])
        check_strings(@input_string, forbidden_string)
      end

      def execute_input(input)
        eval(input)
      end

      def execute_and_rescue(input)
        execute_input(input)
      rescue StandardError
        { result: '実行できませんでした。コードが正しいか一度確認してみてください。' }
      end

      def check_strings(input, strings)
        strings.each do |s|
          raise '実行できませんでした。コードが正しいか一度確認してみてください。' if input.include?(s)
        end
      end

      def forbidden_string
        [
          'Work',
          'Chapter',
          'Practice',
          'Authentication',
          'build',
          'new',
          'touch',
          'increment',
          'increment!',
          'decrement',
          'decrement!',
          'delete_all',
          'save',
          'create',
          'create!',
          'update',
          'update!',
          'update_attribute',
          'update_attributes',
          'update_attributes!',
          'destroy',
          'destroy!',
          'destroy_all',
          'delete',
          'delete_all',
          'first_or_create',
          'first_or_create!',
          'first_or_initialize',
          'toggle',
          'toggle!',
          'destroy_by',
          'delete_by',
          'reverse',
          'split',
          'join',
          'find_by_sql',
          'ActiveRecord::Base',
          'connection',
        ]
      end
    end
  end
end
