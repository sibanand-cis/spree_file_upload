class FileUpload < ActiveRecord::Base
  attr_accessible :file_name,:attachment

	has_attached_file :attachment,
										:styles => {  
										:thumb => "100x100#",
      							:small  => "150x150>",
      							:medium => "200x200" }

									 
end
