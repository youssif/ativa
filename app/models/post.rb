class Post < ActiveRecord::Base
  attr_accessible :attachment, :message, :title, :phase_id, :project_id
  belongs_to :project
  belongs_to :phase
end
