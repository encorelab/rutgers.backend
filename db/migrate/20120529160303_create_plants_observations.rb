class CreatePlantsObservations < ActiveRecord::Migration
  def change
    create_table :plants_observations do |t|
      t.string :subcategory
      t.string :title
      t.integer :surface_cover
      t.text :note
      t.string :student_name
      t.string :group_name
      t.integer :transect
      t.integer :plot

      t.timestamps
    end
  end
end
