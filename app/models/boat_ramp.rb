class BoatRamp < ActiveRecord::Base
  has_many :put_ins, class_name: 'River', foreign_key: :put_in
  has_many :take_outs, class_name: 'River', foreign_key: :take_out
end
