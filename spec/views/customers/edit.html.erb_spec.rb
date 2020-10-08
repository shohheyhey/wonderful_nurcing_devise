require "rails_helper"

RSpec.describe "customers/edit", type: :view do
  before do
    @user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 6))
    @category = create(:category)
    # binding.pry
    @customer = assign(:customer, Customer.create!(
                                    user_id: @user.id,
                                    category_id: @category.id,
                                    name: "MyString",
                                    age: 1,
                                    kaigodo: 1,
                                    medical_history: "MyText",
                                    discription: "MyText",
                                  ))
  end

  it "renders the edit customer form" do
    render
    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do
      # binding.pry
      # assert_select "input[user_id=?]", "customer[user_id]"

      # assert_select "input[category_id=?]", "customer[category_id]"

      assert_select "input[name=?]", "customer[name]"

      # assert_select "input[age=?]", "customer[age]"

      # assert_select "input[kaigodo=?]", "customer[kaigodo]"

      # assert_select "textarea[medical_history=?]", "customer[medical_history]"

      # assert_select "textarea[discription=?]", "customer[discription]"
    end
  end
end
