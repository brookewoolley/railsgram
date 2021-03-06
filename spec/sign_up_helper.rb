def sign_up_user
  visit '/'
  click_link("Sign up", match: :first)
  fill_in("user_username", with: 'featurename')
  fill_in "user_email", with: "featuretest@email.com"
  fill_in "user_password", with: "featurepwd"
  fill_in 'user_password_confirmation', with: "featurepwd"
  click_on "Submit"
  expect(page).to have_content('Hi featurename!')
end
