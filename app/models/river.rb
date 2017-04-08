class River < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :put_in, presence: true
  validates :take_out, presence: true
  validates :length, presence: true
  validates :managing_agency, presence: true
  validates :permit_type, presence: true
  validates :application_fee, presence: true
  validates :permit_cost, presence: true
  validates :deadline, presence: true
  validates :drawing, presence: true
  validates :application_website, presence: true

  belongs_to :state
end
