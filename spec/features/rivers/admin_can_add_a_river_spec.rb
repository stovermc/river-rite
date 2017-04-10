require 'rails_helper'

RSpec.feature 'Admin can view single river' do
  describe "when admin clicks on single river link" do
    xit "shows the details of the river" do
      state = State.create(name: "Idaho")

     visit admin_state_path(state)
     click_on "Add River"

     expect(current_path).to eq new_admin_state_river_path(state)
     fill_in "river[name]", with: "Idaho"
     fill_in "river[put_in]", with: "Boundary Creek"
     fill_in "river[take_out]", with: "Cache Bar"
     fill_in "river[permit_cost]", with: "$6"
     fill_in "river[permit_type]", with: "$4 per person per day"
     fill_in "river[length]", with: "96"
     fill_in "river[managing_agency]", with: "USFS Salmon-Challis Ranger District"
     fill_in "river[application_website]", with: "https://www.recreation.gov/"
     click_on "Create"

     expect(current_path).to eq admin_state_path(state)

     click_on "Middle Fork of the Salmon"

     expect(page).to have_content("Middle Fork of the Salmon")
     expect(page).to have_content("Put-In: Boundary Creek")
     expect(page).to have_content("Take-Out: Cache Bar")
     expect(page).to have_content("Application Fee: $6")
     expect(page).to have_content("Permit Cost: $4 per person per day")
     expect(page).to have_content("Permit Type: Lottery")
     expect(page).to have_content("Length: 96 Miles")
     expect(page).to have_content("Managing Agency: USFS Salmon-Challis Ranger District")
     expect(page).to have_content("https://www.recreation.gov/")
    end
  end
end




# As an Admin
# when they visit a state page
# they see all the rivers for that state
# and they click on New River
# and they fill in river information
# then they expect to see the new information displayed on the state page
