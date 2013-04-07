class User < ActiveRecord::Base
  attr_accessible :name, :user_id
  
  has_many :vcards, dependent: :destroy
  
end
