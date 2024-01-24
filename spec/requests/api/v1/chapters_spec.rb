# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::ChaptersController, type: :controller do
  describe 'GET #index' do
    let!(:user) { create(:user) }
    let!(:work) { create(:work) }
    let!(:chapters) { create(:chapter, work:) }

    before do
      get :index, params: { slug: work.slug }
    end

    it 'HTTPステータス200を返すこと' do
      expect(response).to have_http_status(200)
    end

    it 'JSON body response contains expected work practices' do
      json_response = JSON.parse(response.body)
      expect(json_response).to match({
        'chapters' => [
          {
            'id' => chapters.id,
            'name' => chapters.name,
            'slug' => chapters.slug,
            'order_number' => chapters.order_number,
            'created_at' => chapters.created_at.as_json,
            'updated_at' => chapters.updated_at.as_json,
            'work_id' => chapters.work_id
          }
        ],
        'description' => work.description
      }.as_json)
    end
  end
end
