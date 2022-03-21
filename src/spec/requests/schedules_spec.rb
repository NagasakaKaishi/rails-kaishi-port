require 'rails_helper'

RSpec.describe "Schedules_request", type: :request do
  describe "スケジュール管理ページ" do
    before do
      get root_path
    end
    it "レスポンスが正常である" do
      expect(response).to have_http_status 200
    end
  end
end
