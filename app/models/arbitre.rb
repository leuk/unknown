class Arbitre < ActiveRecord::Base	
	
	has_attached_file :photo, :styles => { :medium => "400x300>", :thumb => "150x150>" }

end
