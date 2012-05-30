class AddPaperclipImageFields < ActiveRecord::Migration
  def up
    [:weather_observations, :plants_observations, :soil_water_observations, :animals_observations].each do |obs|
      change_table obs do |t|
        t.has_attached_file :image
      end
    end
  end

  def down
  end
end
