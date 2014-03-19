class IndoPost < ActiveRecord::Base
  attr_accessible :content, :date, :location, :title

  validates :title, :presence => true
  validates :content, :presence => true


end
