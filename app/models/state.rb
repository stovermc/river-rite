class State < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :rivers
end
