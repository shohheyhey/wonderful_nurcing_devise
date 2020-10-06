require "rails_helper"

RSpec.describe "customers/new", type: :view do
  before do
    @user = User.new(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password(min_length: 6))
    @category = Category.new(user_id: @user.id)

    assign(:customer, Customer.new(
                        user_id: @user.id,
                        category_id: @category.id,
                        name: "MyString",
                        age: 1,
                        kaigodo: 1,
                        medical_history: "MyText",
                        discription: "MyText",
                      ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do
      # assert_select "input[name=?]", "customer[user_id]"

      # assert_select "input[name=?]", "customer[category_id]"

      # assert_select "input[name=?]", "customer[name]"

      assert_select "input[name=?]", "customer[age]"

      assert_select "input[name=?]", "customer[kaigodo]"

      assert_select "textarea[name=?]", "customer[medical_history]"

      assert_select "textarea[name=?]", "customer[discription]"
    end
  end
end
