# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
