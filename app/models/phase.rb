class Phase < ActiveRecord::Base
  attr_accessible :name

  has_many :posts
  has_many :projects

  def progress_level
  	levels = {
  		"onboarding" => 9,
  		"creative" => 29,
  		"design" => 50,
  		"development" => 71,
  		"implementation" => 91
  	}
  	return levels[self.name]
  end
end
