require 'rails_helper'

RSpec.describe "V1::AdminUsers", type: :request do
  describe "GET /signup" do
    it "returns http success" do
      get "/v1/admin_users/signup"
      expect(response).to have_http_status(:success)
    end
  end

end
