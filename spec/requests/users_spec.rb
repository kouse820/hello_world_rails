require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "ユーザーの一覧が取得できる" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /:id" do
    it "任意のユーザーレコードが取得できる" do
    end
  end

  describe "POST /users" do
    it "ユーザーレコードが作成できる" do
    end
  end

  describe "PATCH /posts/:id" do
    it "指定したユーザーレコードが更新できる" do
    end
  end

  describe "DELETE /posts/:id" do
    it "指定したユーザーレコードが削除できる" do
    end
  end
end

