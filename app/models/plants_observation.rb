class PlantsObservation < ActiveRecord::Base
  attr_accessible :group_name, :note, :plot, :student_name, :subcategory, :surface_cover, :title, :transect
end
