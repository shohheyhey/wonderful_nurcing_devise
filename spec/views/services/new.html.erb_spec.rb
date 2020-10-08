require 'rails_helper'

RSpec.describe "services/new", type: :view do
  before(:each) do
    assign(:service, Service.new(
      user: nil,
      category: nil
    ))
  end

  pending "renders new service form" do
    render

    assert_select "form[action=?][method=?]", services_path, "post" do

      assert_select "input[name=?]", "service[user_id]"

      assert_select "input[name=?]", "service[category_id]"
    end
  end
end
