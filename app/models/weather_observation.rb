class WeatherObservation < ActiveRecord::Base
  attr_accessible :conditions, :group_name, :note, :plot, :student_name, :title, :transect
end
