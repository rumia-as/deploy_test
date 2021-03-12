require 'rails_helper'

RSpec.describe "RareFishMaps", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/rare_fish_map/index"
      expect(response).to have_http_status(:success)
    end
  end

end
