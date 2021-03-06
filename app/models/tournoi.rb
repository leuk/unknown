class Tournoi < ActiveRecord::Base

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Model Associations & Dependencies
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	# Adding flyer images to seasons	
		has_attached_file :flyer, :styles => { :medium => "400x300>", :thumb => "150x150>" }	
	# Adding Groups To Tournoi
		has_many :groupes
	# A Tounoi is scoped under one season
		belongs_to :season

	
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Model Validations
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	validates_presence_of :title , :content , :keywords , :meta , :start , :end , :name
	validates_uniqueness_of :title, :name	
	
end
