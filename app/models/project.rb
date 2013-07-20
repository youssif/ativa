class Project < ActiveRecord::Base
	attr_accessible :name, :phase_id
	has_many :posts
	belongs_to :phase

end
