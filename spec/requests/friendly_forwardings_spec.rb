require 'spec_helper'

describe "FriendlyForwardings" do

  it "should forward to the requested page after sign in" do
  	user = Factory(:user)
  	visit edit_user_path(user)
  	# The test automatically follows the redirect after the sign in page.
  	fill_in :email, 	:with => user.email
  	fill_in :password, 	:with => user.password
  	click_button
  	# This test folows the redirect again, this time to users/edit.
  	response.should render_template('users/edit')
  end

end
