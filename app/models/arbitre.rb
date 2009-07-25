class Arbitre < ActiveRecord::Base	

# Adding photos to arbitres	
	has_attached_file :photo, :styles => { :medium => "400x300>", :thumb => "150x150>" }

end
