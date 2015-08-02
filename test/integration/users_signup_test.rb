require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { name: "",
                               email: "user@invalid",
                               password: "foo",
                               password_confirmation: "foo" }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
    assert_not flash.any?
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, user: { name: "Example User",
                               email: "user@example.com",
                               password: "foobar",
                               password_confirmation: "foobar" }
    end
    assert_redirected_to user_path(User.last)
    assert_not flash[:success].blank?
    assert is_logged_in?
  end

end
