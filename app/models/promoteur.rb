class Promoteur < ActiveRecord::Base
	
# Adding logo  to promoteur	
	has_attached_file :logo, :styles => { :medium => "400x300>", :thumb => "150x150>" }	
	
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Model Validations
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	validates_presence_of :title , :content , :keywords , :meta , :company_name , :phone , :email
	validates_uniqueness_of :title , :company_name
end
