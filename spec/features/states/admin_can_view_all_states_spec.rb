# as an admin user
# when they visit the dashboard
# they can see all the states

require 'rails_helper'

RSpec.feature 'Admin can create a new state' do
  describe 'Admin clicks on on new state ' do
    context 'as admin' do
      it 'allows admin to create a new state' do
        state_1 = State.create(name: "Colorado")
        state_2 = State.create(name: "Utah")

        visit admin_states_path

        within "div.states div:nth-child(1)" do
            expect(page).to have_content("Colorado")
        end
        within "div.states div:nth-child(2)" do
            expect(page).to have_content("Utah")
        end

        expect(page).to have_link("Add State", href: new_admin_state_path)

      end
    end
  end
end
