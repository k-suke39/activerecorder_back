# frozen_string_literal: true

module Api
  module V1
    class AnswersController < ApplicationController
      def check
        user_answer = eval(URI.decode_www_form_component(params[:user_answer]))
        answer = Practice.find_by(id: params[:practice_id]).answer
        question_answer = eval(answer)

        pp user_answer == question_answer
        render json: { result: user_answer == question_answer }
      rescue StandardError
        render json: { result: false }
      end

      private

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
          'join'
        ]
      end
    end
  end
end
