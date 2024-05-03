class CreateProjectsTools < ActiveRecord::Migration[7.0]
  def change
    create_table :projects_tools do |t|
      t.belongs_to :project, null: false, foreign_key: true
      t.belongs_to :tool, null: false, foreign_key: true
      t.timestamps
    end
  end
end
