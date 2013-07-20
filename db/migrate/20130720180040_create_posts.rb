class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :message
      t.string :attachment
      t.references :project
      t.references :phase

      t.timestamps
    end
  end
end
