require "rails_helper"

RSpec.describe "customers/show", type: :view do
  before do
    @user = FactoryBot.create(:user)
    @category = FactoryBot.create(:category, user_id: @user.id)
    @customer = assign(:customer, Customer.create!(
      user_id: @user.id,
      category_id: @category.id,
      name: "Name",
      age: 2,
      kaigodo: 3,
      medical_history: "MyText",
      discription: "MyText",
      ))
    end

    fit "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
