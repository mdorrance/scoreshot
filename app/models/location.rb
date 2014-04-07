class Location < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :city, :email, :name, :phone, :state, :website, :zipcode
  has_many :mac_shoots
  has_many :open_shoots
end
