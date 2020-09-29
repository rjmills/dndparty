require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      username: "MyString",
      email: "MyString",
      password: "MyString",
      password_confirmation: "MyString"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Crypted password/)
    expect(rendered).to match(/Salt/)
  end
end
