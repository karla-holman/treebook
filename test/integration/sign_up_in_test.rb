require 'test_helper'

class SignUpInTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "that signing in redirects to the home page" do
  		sign_in users(:karla)
  		assert_response :redirect
  		assert_redirected_to statuses_path
  end
end
