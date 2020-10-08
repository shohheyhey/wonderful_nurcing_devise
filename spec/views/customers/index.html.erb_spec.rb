require "rails_helper"

RSpec.describe "customers/index", type: :view do
  before do
    @user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password)
    @category = create(:category)
    sign_in @user

    assign(:customers, [
      Customer.create!(
        user_id: @user.id,
        category_id: @category.id ,
        name: "Name",
        age: 2,
        kaigodo: 3,
        medical_history: "MyText",
        discription: "MyText",
      ),
      Customer.create!(
        user_id: @user.id,
        category_id: @category.id,
        name: "Name",
        age: 2,
        kaigodo: 3,
        medical_history: "MyText",
        discription: "MyText",
      ),
    ])
  end

  pending "renders a list of customers" do
    render
    assert_select "tr>td", count: 8
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 4
    assert_select "tr>td", text: "MyText".to_s, count: 4
  end
end
