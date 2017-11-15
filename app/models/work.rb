class Work < ActiveRecord::Base
  belongs_to :category
  has_many :reviews
  validates :name, :presence => true
end
