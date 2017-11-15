class User < ActiveRecord::Base
  has_many :reviews
  has_many :works
  validates :username, :presence => true
end
