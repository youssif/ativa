class AddPhaseIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :phase_id, :integer
  end
end
