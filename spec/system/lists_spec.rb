require 'rails_helper'

RSpec.describe "Lists", type: :system do
  describe '正常' do
    context 'リストに投稿する' do
      it '投稿できること' do
        list = FactoryBot.create(:list)
        
        visit "lists/new"
        fill_in "list[name]", with: list.name, visible: false
        choose "list_taste_very-bad", with: list.taste, visible: false
        choose "list_price_average", with: list.price, visible: false
        choose "list_service_very-good", with: list.service, visible: false
        fill_in "list[memo]", with: "美味しかった", visible: false
        attach_file "list[image]", "#{Rails.root}/public/bigmac.png", visible: false
        fill_in "list[total]", with: list.total, visible: false
        click_on "commit"
        
        expect(page).to have_content "マクドナルド"
        expect(page).to have_content 100
        expect(page).to have_content "very-bad"
        expect(page).to have_content "average"
        expect(page).to have_content "very-good"
        expect(page).to have_content "美味しかった"
        expect(page).to have_selector("img[src$='bigmac.png']")
      end
    end
  end
  
  describe 'エラー' do
    context '必須項目が未入力' do
      it 'エラーメッセージが表示され、投稿できないこと' do
        visit "lists/new"
        click_on "commit"
        
        expect(page).to have_content "店舗名を入力してください"
        expect(page).to have_content "味を入力してください"
        expect(page).to have_content "金額を入力してください"
        expect(page).to have_content "サービスを入力してください"
        expect(page).to have_content "総合点を入力してください"
      end
    end
  end
end