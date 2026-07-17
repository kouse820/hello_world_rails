require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    subject { get users_path }
    before { create_list(:user, 3) }
    it "ユーザーの一覧が取得できる" do
      # get users_path
      subject

       res = JSON.parse(response.body)
       expect(res.length).to eq 3
       expect(res[0].keys).to eq ["account", "name", "email"]
       expect(response).to have_http_status(200)
    end
  end

  describe "POST /users" do
    subject { post(users_path, params: params) }

    context "適切なパラメーターを送信したとき" do
      let(:params) do {user: attributes_for(:user) }
      end

      it "ユーザーのレコードを作成できる" do
        expect { subject }.to change { User.count }.by(1)
        res = JSON.parse(response.body)
        expect(res["name"]).to eq params[:user][:name]
        expect(res["account"]).to eq params[:user][:account]
        expect(res["email"]).to eq params[:user][:email]
        expect(response).to have_http_status(200)
      end
    end

    context "不適切なパラメーターを送信したとき" do
      let(:params) { attributes_for(:user) }
      it "エラーする" do
        expect { subject }.to raise_error( ActionController::ParameterMissing )
      end
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
