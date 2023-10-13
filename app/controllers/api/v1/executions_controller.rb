# frozen_string_literal: true

module Api
  module V1
    class ExecutionsController < Api::V1::ApplicationController
      before_action :decode_and_check_input, only: %i[index check sql]

      def index
        render json: execute_and_rescue(@input_string)
      end

      def check
        user_answer = execute_and_rescue(@input_string)
        answer = Practice.find_by(id: params[:practice_id]).answer
        question_answer = execute_and_rescue(answer)

        render json: { result: user_answer == question_answer }
      end

      def sql
        render json: get_sql_query(@input_string)
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

      def get_sql_query(input)
        logs = []

        ActiveSupport::Notifications.subscribe "sql.active_record" do |*args|
          event = ActiveSupport::Notifications::Event.new(*args)
          sql = event.payload[:sql]
          binds = event.payload[:binds].map(&:value)

          # ActiveRecordの内部クエリを無視
          next unless sql.start_with?("SELECT \"") || sql.start_with?("SELECT COUNT")

          binds.each_with_index do |value, i|
            placeholder = "$#{i + 1}"
            sql = sql.gsub(placeholder, value.to_s)
          end

          json_data = {
            sql: sql,
            name: event.name,
            duration: event.duration.to_f.round(2)
          }
          logs << json_data
          logger.debug(json_data.to_json)
        end

        result = eval(input)
        result = result.to_a if result.is_a?(ActiveRecord::Relation)

        ActiveSupport::Notifications.unsubscribe "sql.active_record"
        {sql: logs.map { |log| log[:sql] }.join(";")}
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
          'touch_all',
          'clear_validators',
          'create_with',
          'insert_all',
          'update_columns',
          'update_counters',
          'create_or_find_by',
          'find_or_initialize_by'
        ]
      end
    end
  end
end
