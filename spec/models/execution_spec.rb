# frozen_string_literal: true

# spec/models/execution_spec.rb
require 'rails_helper'

RSpec.describe Execution, type: :model do
  describe '#execute_and_rescue' do
    context '正しい入力が与えられた場合' do
      let(:valid_input) { 'User.all' }
      it '入力を実行して結果を返すこと' do
        allow(Execution).to receive(:execute_input).with(valid_input).and_return('SELECT * FROM users;')
        expect(Execution.execute_and_rescue(valid_input)).to eq('SELECT * FROM users;')
      end
    end

    context '入力がエラーを引き起こした場合' do
      let(:error_input) { 'raise StandardError' }
      it 'エラーを捕捉してエラーメッセージを返すこと' do
        allow(Execution).to receive(:execute_input).with(error_input).and_raise(StandardError)
        result = Execution.execute_and_rescue(error_input)
        expect(result).to have_key(:result)
        expect(result).to have_key(:error)
        expect(result[:result]).to eq('実行できませんでした。コードが正しいか一度確認してみてください。')
      end
    end
  end

  describe '#check_strings' do
    let(:forbidden_input) { 'User.destroy_all' }
    context '入力に禁止された文字列が含まれている場合' do
      it 'エラーを発生させること' do
        expect { Execution.check_strings(forbidden_input) }.to raise_error(StandardError)
      end
    end

    context '入力に禁止された文字列が含まれていない場合' do
      let(:safe_input) { 'User.all' }
      it 'エラーを発生させないこと' do
        expect { Execution.check_strings(safe_input) }.not_to raise_error
      end
    end
  end
end
