class MacShoot < ActiveRecord::Base
  attr_accessible :division, :location_id, :score_actual, :user_id
  belongs_to :location
  belongs_to :user
end
