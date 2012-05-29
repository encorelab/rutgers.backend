class SoilWaterObservation < ActiveRecord::Base
  attr_accessible :color, :group_name, :note, :organics, :plot, :student_name, :texture, :title, :transect, :water, :water_level
end
