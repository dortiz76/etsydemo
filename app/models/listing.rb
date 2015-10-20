class Listing < ActiveRecord::Base
	has_attached_file :image, styles: { small: "200x200>", thumb: "50x50>" }, default_url: "default.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
