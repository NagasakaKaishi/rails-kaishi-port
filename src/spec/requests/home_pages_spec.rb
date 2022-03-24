require 'rails_helper'

RSpec.describe "HomePages", type: :request do
  describe "GET /index" do
    before do
      get root_path
    end
    it "レスポンスが正常である" do
      expect(response).to have_http_status 200
    end
  end
end
