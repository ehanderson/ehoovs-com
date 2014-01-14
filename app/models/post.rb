class Post < ActiveRecord::Base
	attr_accessible :content, :title, :location

	validates :title, :presence => true
	validates :content, :presence => true

	has_many :comments, :dependent => :destroy

end
