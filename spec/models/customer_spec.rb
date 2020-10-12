require "rails_helper"

RSpec.describe Customer, type: :model do
  context "user_id, category_idが入力されている時" do
    let(:user){create(:user)}
    let(:category){create(:category)}
    let(:customer){build(:customer, user_id: user.id, category_id: category.id)}
    it "customerが作られる" do
      expect(customer.user_id).to eq user.id
      expect(customer.category_id).to eq category.id
      expect(customer).to be_valid
    end
  end

  context "user_id がない場合" do
    let(:category){create(:category)}
    let(:customer){build(:customer, category_id: category.id)}
    it "customerが作られない" do
      expect(customer.user_id).to eq nil
      expect(customer).not_to be_valid
    end
  end

  context "category_id がない場合" do
    let(:user){create(:user)}
    let(:customer){build(:customer, user_id: user.id)}
    it "customerが作られない" do
      expect(customer.category_id).to eq nil
      expect(customer).not_to be_valid
    end
  end

end
