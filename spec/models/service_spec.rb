require 'rails_helper'

RSpec.describe Service, type: :model do
  context "user_id, category_idが入力されている場合" do
    let(:user){create(:user)}
    let(:category){create(:category)}
    let(:service){build(:service, user_id: user.id, category_id: category.id)}
    it "バリデーション が通る" do
      expect(service.valid?).to eq true
    end
  end

  context "user_idがない場合" do
    let(:category){create(:category)}
    let(:service){build(:service, user_id: nil, category_id: category.id)}
    it "バリデーションエラーが起こる" do
      expect(service.user_id).to eq nil
      expect(service).not_to be_valid
    end
  end

  context "category_idがない場合" do
    let(:user){create(:user)}
    let(:service){build(:service, user_id: user.id, category_id: nil)}
    it "バリデーションエラーが起こる" do
      expect(service.category_id).to eq nil
      expect(service).not_to be_valid
    end
  end
end
