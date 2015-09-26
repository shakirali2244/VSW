class Driver < ActiveRecord::Base
  has_many :trips, dependent: :destroy
  has_many :managers, through: :trips
end
