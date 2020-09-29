require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        username: "Username",
        email: "Email",
        password: "MyString",
        password_confirmation: "MyString"
      ),
      User.create!(
        username: "Username2",
        email: "Email2",
        password: "MyString",
        password_confirmation: "MyString"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Username".to_s, count: 1
    assert_select "tr>td", text: "Username2".to_s, count: 1
    assert_select "tr>td", text: "Email".to_s, count: 1
    assert_select "tr>td", text: "Email2".to_s, count: 1
  end
end
