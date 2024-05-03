class CreateToolsProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :tools_projects do |t|
      t.belongs_to :project, null: false, foreign_key: true
      t.belongs_to :tool, null: false, foreign_key: true
      t.timestamps
    end
  end
end
