require "rails_helper"

# 　バリデーションチェック的なものか？？
RSpec.describe User, type: :model do
  context "emailが入力されていない時" do
    let(:user){build(:user, email: nil)}
    fit "登録に失敗する" do
      expect(user.email).to eq nil
      expect(user).not_to be_valid
    end
  end

  context "passwordが入力されていない時" do
    let(:user){build(:user, password: nil)}
    fit "登録に失敗する" do
      expect(user.password).to eq nil
      expect(user).not_to be_valid
    end
  end

  context "email, passwordが入力されている時" do
    let(:user){build(:user)}
    fit "登録が完了する" do
      expect(user.valid?).to eq true
    end
  end
end
