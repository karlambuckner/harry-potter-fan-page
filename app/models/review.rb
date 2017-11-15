class Review < ActiveRecord::Base
  belongs_to :work

  validates :content, :presence => true
end
