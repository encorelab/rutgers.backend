class SoilWaterObservation < ActiveRecord::Base
  attr_accessible :color, :group_name, :note, :organics, :plot, :student_name, :texture, :title, :transect, :water, :water_level, :image

  has_attached_file :image,
    :path => ":rails_root/public/photos/soil_water/:attachment/:id/:style/:filename.jpg",
    :url => "/photos/soil_water/:attachment/:id/:style/:filename.jpg",
    :styles => { :thumb => "100x100#", :big => "700x700" }


  def image_big_url
    image.url(:big)
  end

  def image_thumb_url
    image.url(:thumb)
  end
end
