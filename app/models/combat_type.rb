class CombatType < ActiveRecord::Base
	
# Validations 
	validates_presence_of :title
	validates_uniqueness_of :title	
end
