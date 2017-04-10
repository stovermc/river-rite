require 'rails_helper'

RSpec.feature 'Admin can view single river' do
  describe "when admin clicks on single river link" do
    it "shows the details of the river" do
      state = State.create(name: "Idaho")
      put_in = BoatRamp.create(name:"Boundary Creek")
      take_out = BoatRamp.create(name:"Cache Bar")
      app_fee = ApplicationFee.create(price: "$6")
      permit_cost = PermitCost.create(price: "$4 per person per day")
      permit_type = PermitType.create(name: "Lottery")
      mg_agency = ManagingAgency.create(name: "USFS Salmon-Challis Ranger District")
      app_website = ApplicationWebsite.create(website: "https://www.recreation.gov/")

      river = state.rivers.create(name:"Middle Fork of the Salmon",
                                 put_in: put_in,
                                 take_out: take_out,
                                 application_fee: app_fee,
                                 permit_cost: permit_cost,
                                 permit_type: permit_type,
                                 length: 96,
                                 managing_agency: mg_agency,
                                 application_website: app_website)

    visit admin_state_path(state)
    click_on ("Middle Fork of the Salmon")

    expect(current_path).to eq admin_state_river_path(state, river)
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

#As an admin
# when they visit a state page
# and they click on a river
# they see all the river info
