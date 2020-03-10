require 'rails_helper'

RSpec.describe "Lists", type: :request do
  describe '正常' do
    context '投稿する' do
      it '正しく投稿できること' do
        get "/lists/new"
        expect(response).to have_http_status(200)
        post "/lists", params: { list: FactoryBot.attributes_for(:list) }
        follow_redirect!
      end
    end
  end
end
