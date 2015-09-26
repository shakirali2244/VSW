class Trip < ActiveRecord::Base
  belongs_to :manager
  belongs_to :driver

  validates :title, presence: true, uniqueness: true
  validates :note, presence: true
  validates :startingpoint, presence: true
  validates :endingpoint, presence: true
  validates :startingtime, presence: true
  validates :endingtime, presence: true
end