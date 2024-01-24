# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::V1::Executions', type: :request do
  let!(:user) { create(:user) }
  let!(:work) { create(:work) }
  let!(:chapter) { create(:chapter, work:) }
  let!(:practice) { create(:practice, chapter:, work:, user:) }

  describe 'GET /api/v1/executions' do
    it 'HTTPステータス200を返すこと' do
      get api_v1_executions_path, params: { active_record_string: 'User.all' }
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/executions/check' do
    it 'HTTPステータス200を返すこと' do
      get check_api_v1_executions_path, params: { active_record_string: 'current_user', practice_id: practice.id }
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/executions/sql' do
    it 'HTTPステータス200を返すこと' do
      get sql_api_v1_executions_path, params: { active_record_string: 'current_user' }
      expect(response).to have_http_status(200)
    end
  end
end
