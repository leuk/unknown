class Type < ActiveRecord::Base
	
# Model Validations
	validates_presence_of :title , :groups_count , :groups_items	
	validates_numericality_of :groups_count , :groups_items
	validates_uniqueness_of :title
end
