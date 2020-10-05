require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        user: nil,
        category: nil,
        name: "Name",
        age: 2,
        kaigodo: 3,
        medical_history: "MyText",
        discription: "MyText"
      ),
      Customer.create!(
        user: nil,
        category: nil,
        name: "Name",
        age: 2,
        kaigodo: 3,
        medical_history: "MyText",
        discription: "MyText"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
