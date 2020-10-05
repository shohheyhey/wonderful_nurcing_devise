require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      user: nil,
      category: nil,
      name: "MyString",
      age: 1,
      kaigodo: 1,
      medical_history: "MyText",
      discription: "MyText"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[user_id]"

      assert_select "input[name=?]", "customer[category_id]"

      assert_select "input[name=?]", "customer[name]"

      assert_select "input[name=?]", "customer[age]"

      assert_select "input[name=?]", "customer[kaigodo]"

      assert_select "textarea[name=?]", "customer[medical_history]"

      assert_select "textarea[name=?]", "customer[discription]"
    end
  end
end
