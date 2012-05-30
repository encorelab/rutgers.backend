class PlantsObservation < ActiveRecord::Base
  attr_accessible :group_name, :note, :plot, :student_name, :subcategory, :surface_cover, :title, :transect, :image

  has_attached_file :image,
    :path => ":rails_root/public/photos/plants/:attachment/:id/:style/:filename.jpg",
    :url => "/photos/plants/:attachment/:id/:style/:filename.jpg",
    :styles => { :thumb => "100x100#", :big => "700x700" }


  def image_big_url
    image.url(:big)
  end

  def image_thumb_url
    image.url(:thumb)
  end
end
