class Vcard < ActiveRecord::Base
  attr_accessible :address, :address2, :city, :state, :zipCode
  
  belongs_to :user
end