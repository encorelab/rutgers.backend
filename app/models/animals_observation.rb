class AnimalsObservation < ActiveRecord::Base
  attr_accessible :count, :group_name, :note, :plot, :student_name, :subcategory, :title, :transect, :image

  has_attached_file :image,
    :path => ":rails_root/public/photos/animals/:attachment/:id/:style/:filename.jpg",
    :url => "/photos/animals/:attachment/:id/:style/:filename.jpg",
    :styles => { :thumb => "100x100#", :big => "700x700" }


  def image_big_url
    image.url(:big)
  end

  def image_thumb_url
    image.url(:thumb)
  end
end
