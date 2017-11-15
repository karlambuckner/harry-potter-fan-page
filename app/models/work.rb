class Work < ActiveRecord::Base
  validates :name, :presence => true
end
