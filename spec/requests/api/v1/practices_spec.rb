require 'rails_helper'

RSpec.describe Api::V1::PracticesController, type: :controller do
  describe "GET #index" do
    let(:work) { create(:work) }
    let!(:practices) { create_list(:practice, 3, work: work) } 

    before do
      get :index, params: { slug: work.slug }
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "JSON body response contains expected work practices" do
      json_response = JSON.parse(response.body)
      expect(json_response.keys).to match_array(work.practices)
    end
  end
end
