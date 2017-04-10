require 'rails_helper'

RSpec.feature "Admin can delete a river" do
  describe "when admin delets a river" do
    it "no longer appears on state show page" do
      state = State.create(name: "Idaho")
      put_in = BoatRamp.create(name:"Boundary Creek")
      take_out = BoatRamp.create(name:"Cache Bar")
      app_fee = ApplicationFee.create(price: "$6")
      permit_cost = PermitCost.create(price: "$4 per person per day")
      permit_type = PermitType.create(name: "Lottery")
      mg_agency = ManagingAgency.create(name: "USFS Salmon-Challis Ranger District")
      app_website = ApplicationWebsite.create(website: "https://www.recreation.gov/")

      river = state.rivers.create(name:"Middle Fork",
                                 put_in: put_in,
                                 take_out: take_out,
                                 application_fee: app_fee,
                                 permit_cost: permit_cost,
                                 permit_type: permit_type,
                                 length: 96,
                                 managing_agency: mg_agency,
                                 application_website: app_website)


    visit admin_state_river_path(state, river)

    click_on "Delete"

    expect(current_path).to eq admin_state_path(state)
    expect(page).to_not have_content "Middle Fork"
    end
  end
end

# As an Admin
# when they visit a state page
# they see all the rivers for that state
# and they click on delete
# then they no longer expect to see that river displayed
