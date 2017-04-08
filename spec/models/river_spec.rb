require 'rails_helper'

describe River do
  it 'is valild with valid attributes' do
    river = River.create()
  end
  it 'is not valid without name'
  it 'is not valid without put_in'
  it 'is not valid without take_out'
  it 'is not valid without length'
  it 'is not valid without managing_agency'
  it 'is not valid without permit_type'
  it 'is not valid without application_fee'
  it 'is not valid without permit_cost'
  it 'is not valid without deadline'
  it 'is not valid without drawing'
  it 'is not valid without application_website'

  it { should respond_to(:state) }
end
