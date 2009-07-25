class Arene < ActiveRecord::Base

# Adding snapshot to arenes	
	has_attached_file :snapshot, :styles => { :medium => "400x300>", :thumb => "150x150>" }
	
# Model Validations
	validates_presence_of :title, :content, :keywords, :meta, :capacity, :location	
	validates_uniqueness_of :title, :location
	
end
