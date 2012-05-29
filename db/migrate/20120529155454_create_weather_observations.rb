class CreateWeatherObservations < ActiveRecord::Migration
  def change
    create_table :weather_observations do |t|
      t.string :title
      t.string :conditions
      t.text :note
      t.string :student_name
      t.string :group_name
      t.integer :transect
      t.integer :plot

      t.timestamps
    end
  end
end
