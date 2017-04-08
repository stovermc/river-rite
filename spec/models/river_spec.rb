require 'rails_helper'

describe River do
  it 'is valild with valid attributes' do
    state = State.create(name: "Utah")
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

    expect(river).to be_valid
  end

  it 'is not valid without name' do
    state = State.create(name: "Utah")
    put_in = BoatRamp.create(name:"Boundary Creek")
    take_out = BoatRamp.create(name:"Cache Bar")
    app_fee = ApplicationFee.create(price: "$6")
    permit_cost = PermitCost.create(price: "$4 per person per day")
    permit_type = PermitType.create(name: "Lottery")
    mg_agency = ManagingAgency.create(name: "USFS Salmon-Challis Ranger District")
    app_website = ApplicationWebsite.create(website: "https://www.recreation.gov/")

    river = state.rivers.create(put_in: put_in,
                                take_out: take_out,
                                application_fee: app_fee,
                                permit_cost: permit_cost,
                                permit_type: permit_type,
                                length: 96,
                                managing_agency: mg_agency,
                                application_website: app_website)

    expect(river).to_not be_valid
  end

  it 'is not valid without put_in' do
    state = State.create(name: "Utah")
    put_in = BoatRamp.create(name:"Boundary Creek")
    take_out = BoatRamp.create(name:"Cache Bar")
    app_fee = ApplicationFee.create(price: "$6")
    permit_cost = PermitCost.create(price: "$4 per person per day")
    permit_type = PermitType.create(name: "Lottery")
    mg_agency = ManagingAgency.create(name: "USFS Salmon-Challis Ranger District")
    app_website = ApplicationWebsite.create(website: "https://www.recreation.gov/")

    river = state.rivers.create(name:"Middle Fork",
                               take_out: take_out,
                               application_fee: app_fee,
                               permit_cost: permit_cost,
                               permit_type: permit_type,
                               length: 96,
                               managing_agency: mg_agency,
                               application_website: app_website)

    expect(river).to_not be_valid
  end

  it 'is not valid without take_out' do
    state = State.create(name: "Utah")
    put_in = BoatRamp.create(name:"Boundary Creek")
    take_out = BoatRamp.create(name:"Cache Bar")
    app_fee = ApplicationFee.create(price: "$6")
    permit_cost = PermitCost.create(price: "$4 per person per day")
    permit_type = PermitType.create(name: "Lottery")
    mg_agency = ManagingAgency.create(name: "USFS Salmon-Challis Ranger District")
    app_website = ApplicationWebsite.create(website: "https://www.recreation.gov/")

    river = state.rivers.create(name:"Middle Fork",
                               put_in: put_in,
                               application_fee: app_fee,
                               permit_cost: permit_cost,
                               permit_type: permit_type,
                               length: 96,
                               managing_agency: mg_agency,
                               application_website: app_website)

    expect(river).to_not be_valid
  end
  
  it 'is not valid without length' do
    state = State.create(name: "Utah")
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
                               managing_agency: mg_agency,
                               application_website: app_website)

    expect(river).to_not be_valid
  end

  it 'is not valid without managing_agency' do
    state = State.create(name: "Utah")
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
                               application_website: app_website)

    expect(river).to_not be_valid
  end

  it 'is not valid without permit_type' do
    state = State.create(name: "Utah")
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
                               length: 96,
                               managing_agency: mg_agency,
                               application_website: app_website)

    expect(river).to_not be_valid
  end

  it 'is not valid without application_fee' do
    state = State.create(name: "Utah")
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
                               permit_cost: permit_cost,
                               permit_type: permit_type,
                               length: 96,
                               managing_agency: mg_agency,
                               application_website: app_website)

    expect(river).to_not be_valid
  end

  it 'is not valid without permit_cost' do
    state = State.create(name: "Utah")
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
                               permit_type: permit_type,
                               length: 96,
                               managing_agency: mg_agency,
                               application_website: app_website)

    expect(river).to_not be_valid
  end

  it 'is not valid without application_website' do
    state = State.create(name: "Utah")
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
                               managing_agency: mg_agency)
    expect(river).to_not be_valid
  end

  it { should respond_to(:state) }
end
