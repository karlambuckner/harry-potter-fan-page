class Review < ActiveRecord::Base
  belongs_to :work
  belongs_to :user
  validates :content, :presence => true
end
