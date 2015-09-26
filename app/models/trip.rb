class Trip < ActiveRecord::Base
  belongs_to :manager
  belongs_to :driver
end
