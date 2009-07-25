class Arene < ActiveRecord::Base
	
# Model Validations
	validates_presence_of :title, :content, :keywords, :meta, :capacite, :location	
	validates_uniqueness_of :title, :location
end
