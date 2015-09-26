class Driver < ActiveRecord::Base
  has_many :trips, dependent: :destroy
  has_many :managers, through: :trips

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
end