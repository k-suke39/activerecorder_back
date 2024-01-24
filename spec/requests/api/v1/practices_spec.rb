# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::PracticesController, type: :controller do
  describe 'GET #index' do
    let!(:user) { create(:user) }
    let!(:work) { create(:work) }
    let!(:chapter) { create(:chapter, work:) }
    let!(:practices) { create(:practice, work:, chapter:, user:) }

    before do
      get :index, params: { slug: work.slug }
    end

    it 'HTTPステータス200を返すこと' do
      expect(response).to have_http_status(200)
    end

    it 'JSONのレスポンスに適切な練習問題のデータが含まれている' do
      json_response = JSON.parse(response.body)
      expect(json_response).to match(work.practices.as_json)
    end
  end
end
