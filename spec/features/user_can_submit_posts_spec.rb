require 'rails_helper'
require 'sign_up_helper'

RSpec.feature "Journey", type: :feature do
  scenario "can sign up" do
    sign_up_user
    click_link("New Post", match: :first)
    fill_in "post_title", with: "Feature title!"
    fill_in "post_body", with: "Feature body text!"
    page.attach_file("post_image", Rails.root + 'app/assets/images/imagename.jpg')
    click_on "Submit"
    expect(page.html).to include("imagename.jpg")
    expect(page).to have_content("Feature body text!")
  end
end
