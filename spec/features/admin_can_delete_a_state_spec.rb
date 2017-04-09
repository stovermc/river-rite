require 'rails_helper'

RSpec.feature 'Admin can delete a state' do
  describe "when admin clicks on delete state" do
    it "deletes state record" do
      state_1 = State.create(name: "Colorado")
      state_2 = State.create(name: "Utah")

      visit admin_states_path

      click_on "Utah"
      expect(current_path).to eq admin_state_path(state_2)

      click_on "Delete State"

      # expect(flash[:danger]).to match "State successfully deleted."
      expect(current_path).to eq adim_states_path
      expect(page).to_no have_content("Colorado")

    end
  end
end

# as an admin user
# when they visit the dashboard
# they can click on delete
# they expect the state to no longer be displayed
