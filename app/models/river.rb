class River < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :put_in, presence: true
  validates :take_out, presence: true
  validates :application_fee, presence: true
  validates :application_website, presence: true
  validates :permit_cost, presence: true
  validates :permit_type, presence: true
  validates :length, presence: true

  belongs_to :application_fee
  belongs_to :application_website
  belongs_to :managing_agency
  belongs_to :permit_cost
  belongs_to :permit_type
  belongs_to :state

  belongs_to :put_in, class_name: 'BoatRamp', foreign_key: :put_in
  belongs_to :take_out, class_name: 'BoatRamp', foreign_key: :take_out

end
