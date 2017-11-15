class Category < ActiveRecord::Base
  has_many :works
  has_many :reviews, through: :works
  validates :name, :presence => true
end
