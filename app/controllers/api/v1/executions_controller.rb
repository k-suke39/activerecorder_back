# frozen_string_literal: true
module Api
  module V1
    class ExecutionsController < Api::V1::ApplicationController
      def index
        input_string = URI.decode_www_form_component(params[:active_record_string])

        check_strings(input_string, forbidden_string)

        query = eval(input_string)
        render json: query
      rescue StandardError
        render json: { result: '実行できませんでした。コードが正しいか一度確認してみてください。' }
      end

      def check
        input_string = URI.decode_www_form_component(params[:user_answer])

        check_strings(input_string, forbidden_string)

        user_answer = eval(input_string)

        answer = Practice.find_by(id: params[:practice_id]).answer
        question_answer = eval(answer)

        render json: { result: user_answer == question_answer }
      rescue StandardError
        render json: { result: false }
      end
    end
  end
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
    'works'
    'Chapter',
    'chapters',
    'Practice',
    'practices',
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
    "ActiveRecord::Base.connection.execute",
    "ActiveRecord"
  ]
end
