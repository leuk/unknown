class Season < ActiveRecord::Base
	
# Adding flyer images to seasons	
	has_attached_file :flyer, :styles => { :medium => "400x300>", :thumb => "150x150>" }	
	
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Model Validations
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	validates_presence_of :title , :content , :keywords , :meta , :start , :end
	validates_uniqueness_of :title
end
