class Student < ActiveRecord::Base
	has_attached_file :photo, default_url: "../app/assets/images/missing.png"
	# styles: { medium: "300x300>", thumb: "100x100>" },
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
