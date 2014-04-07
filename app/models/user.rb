class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :first_name, :last_name, :username
  has_many :locations
  has_many :mac_shoots
  has_many :open_shoots
end
