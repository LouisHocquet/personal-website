class CreateExpertises < ActiveRecord::Migration[7.0]
  def change
    create_table :expertises do |t|
      t.string :name
      t.string :fontawesome

      t.timestamps
    end
  end
end
