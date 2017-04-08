FactoryGirl.define do
  factory :state do
    name "Colorado"

    # factory :state_with_rivers do
    #   create_list(:river, 3)
    # end
  end
  #
  # sequence
  # factory :river do
  #   name              "green"
  #   put_in            "upper boat ramp"
  #   take_out          "lower boat ramp"
  #   length            45
  #   managing_agency   "USFS"
  #   permit_type       "lottery"
  #   application_fee   15
  #   permit_cost       65
  #   deadline          "12/12/2017"
  #   drawing           "01/01/2018"
  #   application_website "www.recreation.gov"
  #
  # end
end
