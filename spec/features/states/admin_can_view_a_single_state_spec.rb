require 'rails_helper'

RSpec.feature 'Admin can view a single state' do
  describe "when Admin clicks on a state" do
    it "shows all the info for that state" do
      state = State.create(name: "Colorado")
      put_in = BoatRamp.create(name:"Boundary Creek")
      take_out = BoatRamp.create(name:"Cache Bar")
      app_fee = ApplicationFee.create(price: "$6")
      permit_cost = PermitCost.create(price: "$4 per person per day")
      permit_type = PermitType.create(name: "Lottery")
      mg_agency = ManagingAgency.create(name: "USFS Salmon-Challis Ranger District")
      app_website = ApplicationWebsite.create(website: "https://www.recreation.gov/")

      river = state.rivers.create(name:"WestWater",
                                 put_in: put_in,
                                 take_out: take_out,
                                 application_fee: app_fee,
                                 permit_cost: permit_cost,
                                 permit_type: permit_type,
                                 length: 96,
                                 managing_agency: mg_agency,
                                 application_website: app_website)

      visit admin_states_path

      click_on "Colorado"

      expect(current_path).to eq admin_state_path(state)
      expect(page).to have_content("Colorado")
      expect(page).to have_link("WestWater", href: admin_state_river_path(state, river) )


    end

  end
end
# as an admin user
# when they visit the dashboard
# they can click on a state
# then they see the state name
# and they see all the trips for the state (in a div)
