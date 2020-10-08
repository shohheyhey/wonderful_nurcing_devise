require 'rails_helper'

RSpec.describe "services/show", type: :view do
  before(:each) do
    @user = create(:user)
    @category = create(:category)
    @service = assign(:service, Service.create!(
      user_id: @user.id,
      category_id: @category.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
