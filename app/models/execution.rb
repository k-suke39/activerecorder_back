# frozen_string_literal: true

class Execution
  def self.execute_and_rescue(input, context_binding)
    check_strings(input)
    if input == 'current_user' 
      execute_current_user_method(context_binding)
    else
      execute_input(input)
    end
  rescue StandardError => e
    { result: '実行できませんでした。コードが正しいか一度確認してみてください。', error: e.message }
  end

  def self.execute_input(input)
    eval(input)
  end

  def self.execute_current_user_method(context_binding)
    context_binding.eval('current_user')
  end

  def self.check_strings(input)
    FORBIDDEN_STRINGS.each do |forbidden_string|
      raise StandardError, '実行できませんでした。コードが正しいか一度確認してみてください。' if input.include?(forbidden_string)
    end
  end

  def self.get_sql_query(input, context_binding)
    logs = []

    ActiveSupport::Notifications.subscribe 'sql.active_record' do |*args|
      event = ActiveSupport::Notifications::Event.new(*args)
      sql = event.payload[:sql]
      binds = event.payload[:binds].map(&:value)

      next if sql.start_with?('SELECT "works"', 'SELECT "chapters"', 'SELECT "practices"')
      next unless sql.start_with?('SELECT "') || sql.start_with?('SELECT COUNT')

      binds.each_with_index do |value, i|
        placeholder = "$#{i + 1}"
        sql = sql.gsub(placeholder, value.to_s)
      end

      log_entry = {
        sql:,
        name: event.name,
        duration: event.duration.to_f.round(2)
      }

      logs << log_entry unless logs.map { |log| log[:sql] }.include?(log_entry[:sql])
    end

    result = eval(input, context_binding)
    result.to_a if result.is_a?(ActiveRecord::Relation)

    ActiveSupport::Notifications.unsubscribe 'sql.active_record'
    sql_logs = logs.map { |log| log[:sql] }
    { sql: sql_logs.empty? ? '' : "#{sql_logs.join(';')};" }
  end

  FORBIDDEN_STRINGS = [
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
  ].freeze
end
