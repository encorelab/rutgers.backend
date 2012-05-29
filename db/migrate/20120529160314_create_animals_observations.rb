class CreateAnimalsObservations < ActiveRecord::Migration
  def change
    create_table :animals_observations do |t|
      t.string :subcategory
      t.string :title
      t.integer :count
      t.text :note
      t.string :student_name
      t.string :group_name
      t.integer :transect
      t.integer :plot

      t.timestamps
    end
  end
end
