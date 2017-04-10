require 'rails_helper'

RSpec.feature 'Admin can edit a state' do
  describe "when admin clicks on edit state" do
    it "modifies the state record" do
      state_1 = State.create(name: "Colorado")
      state_2 = State.create(name: "Uta")

      visit admin_states_path

      click_on "Uta"
      expect(current_path).to eq admin_state_path(state_2)

      click_on "Edit State"

      fill_in "state[name]", with: "Utah"

      click_on "Update"

      # expect(flash[:danger]).to match "Utah successfully updated."
      expect(current_path).to eq admin_states_path
      expect(page).to have_content("Utah")

    end
  end
end
