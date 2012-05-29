class CreateSoilWaterObservations < ActiveRecord::Migration
  def change
    create_table :soil_water_observations do |t|
      t.string :title
      t.string :color
      t.string :texture
      t.string :organics
      t.string :water
      t.float :water_level
      t.text :note
      t.string :student_name
      t.string :group_name
      t.integer :transect
      t.integer :plot

      t.timestamps
    end
  end
end
