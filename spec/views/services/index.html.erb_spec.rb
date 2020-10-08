require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    @user = create(:user)
    @category = create(:category)
    assign(:services, [
      Service.create!(
        user_id: @user.id,
        category_id: @category.id
      ),
      Service.create!(
        user_id: @user.id,
        category_id: @category.id
      )
    ])
  end

  pending "renders a list of services" do
    render
    assert_select "tr", count: 3
    assert_select "td", count: 10
  end
end
