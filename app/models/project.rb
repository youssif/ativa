class Project < ActiveRecord::Base
  attr_accessible :name

  has_many :phases

  before_create :create_phases

  def create_phases
		phases = [
			'onboarding',
			'creative', 
			'design',
			'development',
			'implementation'
		]
		phases.each do |phase|
			Phase.create(name: phase, project_id: self.id)
		end
  end
end
