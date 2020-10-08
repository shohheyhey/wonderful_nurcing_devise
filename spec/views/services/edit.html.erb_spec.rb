require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  before(:each) do
    @user = create(:user)
    @category = create(:category)
    @service = assign(:service, Service.create!(
      user_id: @user.id,
      category_id: @category.id
    ))
  end

  pending "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(@service), "post" do

      assert_select "input[name=?]", "service[user_id]"

      assert_select "input[name=?]", "service[category_id]"
    end
  end
end
