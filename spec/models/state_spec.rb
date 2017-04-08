require 'rails_helper'

describe State, type: :model do
  it 'is valid with valid attributes' do
    state = State.new(name: 'Utah')

    expect(state).to be_valid
  end

  it 'is not valid with out a name'do
    state = State.new(name:"")

    expect(state).to_not be_valid
  end

  it { should respond_to(:rivers) }
end
