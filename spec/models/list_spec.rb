require 'rails_helper'

RSpec.describe List, type: :model do
  describe '正常に送信' do
    context '投稿する' do
      it '正しく投稿 name: マクドナルド, taste: very-bad, price: average, service: very-good, total: 100' do
        list = FactoryBot.build(:list)
        expect(list).to be_valid
        list.save
        answered_list = List.find(1);
        expect(answered_list.name).to eq('マクドナルド')
        expect(answered_list.taste).to eq('very-bad')
        expect(answered_list.price).to eq('average')
        expect(answered_list.service).to eq('very-good')
        expect(answered_list.total).to eq(100)
      end
    end
  end
  
  describe '入力項目' do
    let(:new_list) { List.new }
    context '必須入力である' do
      it '名前の入力が必須である' do
        #new_list = List.new
        expect(new_list).not_to be_valid
        expect(new_list.errors[:name]).to include(I18n.t('errors.messages.blank'))
      end
      it '味の入力が必須である' do
        #new_list = List.new
        expect(new_list).not_to be_valid
        expect(new_list.errors[:taste]).to include(I18n.t('errors.messages.blank'))
      end
      it '金額の入力が必須である' do
        #new_list = List.new
        expect(new_list).not_to be_valid
        expect(new_list.errors[:price]).to include(I18n.t('errors.messages.blank'))
      end
      it 'サービスの入力が必須である' do
        #new_list = List.new
        expect(new_list).not_to be_valid
        expect(new_list.errors[:service]).to include(I18n.t('errors.messages.blank'))
      end
      it '総合点の入力が必須である' do
        #new_list = List.new
        expect(new_list).not_to be_valid
        expect(new_list.errors[:total]).to include(I18n.t('errors.messages.blank'))
      end
      it '投稿できない' do
        #new_list = List.new
        expect(new_list.save).to be_falsey
      end
    end
    
    context '任意入力' do
      it 'メモ欄が任意入力である' do
        #new_list = List.new
        expect(new_list).not_to be_valid
        expect(new_list.errors[:memo]).not_to include(I18n.t('errors.messages.blank'))
      end
      it '画像添付が任意である' do
        #new_list = List.new
        expect(new_list).not_to be_valid
        expect(new_list.errors[:image]).not_to include(I18n.t('errors.messages.blank'))
      end
    end
  end
end
