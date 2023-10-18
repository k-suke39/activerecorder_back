require 'rails_helper'

RSpec.describe "Api::V1::Executions", type: :request do
  let!(:user) { create(:user) }
  let!(:work) { create(:work) }
  let!(:chapter) { create(:chapter, work: work) }
  let!(:practice) { create(:practice, chapter: chapter, work: work, user: user) }

  describe "GET /api/v1/executions" do
    it "returns 200 status" do
      get api_v1_executions_path, params: { active_record_string: "User.all" }
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /api/v1/executions/check" do
    it "returns 200 status" do
      get check_api_v1_executions_path, params: { active_record_string: "current_user", practice_id: practice.id }
      expect(response).to have_http_status(200)
    end
  end
end
