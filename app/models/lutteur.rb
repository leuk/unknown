class Lutteur < ActiveRecord::Base
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Model Associations & Dependencies
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	# A Lutteur Belongs to one ecury & one category_lutteur
		belongs_to :ecury	
		belongs_to :categorie_lutteur
	# Adding logo to ecuries
		has_attached_file :lutteur_avatar, :styles => { :medium => "400x300>", :thumb => "150x150>" }

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Model Validations
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
		validates_presence_of :title , :content , :keywords , :meta , :firstname , :lastname , :nickname, :birth_date
		validates_uniqueness_of :nickname	
end
