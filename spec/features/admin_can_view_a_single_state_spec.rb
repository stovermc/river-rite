require 'rails_helper'

RSpec.feature 'Admin can view a single state' do
  describe "when Admin clicks on a state" do
    it "shows all the info for that state" do
      state = State.create(name: "Colorado")

      visit admin_states_path

      click_on "Colorado"

      expect(current_path).to eq admin_state_path(state)
      expect(page).to have_content("Colorado")
      expect(page).to have_link(href: 'Colorado')


    end

  end
end
# as an admin user
# when they visit the dashboard
# they can click on a state
# then they see the state name
# and they see all the trips for the state (in a div)
