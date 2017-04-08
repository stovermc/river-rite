require 'rails_helper'

RSpec.feature 'Admin can create a new state' do
  describe 'Admin clicks on on new state ' do
    context 'as admin' do
      it 'allows admin to create a new state' do

        visit new_admin_state_path

        fill_in "state[name]", with: "Colorado"

        click_on "Add State"

        expect(current_path).to eq admin_states_path
        expect(page).to have_content "Colorado"

      end
    end
  end
end
