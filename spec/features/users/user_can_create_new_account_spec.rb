require 'rails_helper'

RSpec.feature "New User can create account" do
  context "when all information is provided" do
    scenario "they are logged in" do

      visit new_user_path

      fill_in "user[name]", with: "stover"
      fill_in "user[email]", with: "stover@example.com"
      fill_in "user[password]", with: "password"
      fill_in "user[password_confirmation]", with: "password"

      click_on "Create Account"

      expect(current_path).to eq(user_path(User.last))
      expect(page).to have_content("Successfully logged in!")
      expect(page).to have_content("Welcome stover!")
    end
  end

  context "when providing incomplete information" do
    scenario "user is sent back to create account page" do

      visit new_user_path

      fill_in "user[name]", with: "stover"
      fill_in "user[email]", with: ""
      fill_in "user[password]", with: "password"
      fill_in "user[password_confirmation]", with: "password"

      click_on "Create Account"

      expect(current_path).to eq (new_user_path)
      expect(page).to have_content("Could not create account")


    end

  end
end
