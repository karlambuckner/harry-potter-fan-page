class Work < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews
  validates :name, :presence => true
end
