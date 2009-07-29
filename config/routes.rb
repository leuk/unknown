ActionController::Routing::Routes.draw do |map|




#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     Named Routes 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
  # Login & Logout Routes
  map.login  'connexion-amateur-de-lutte'  , :controller => 'user_sessions' , :action => 'new'
  map.logout 'connexion-amateur-de-lutte'  , :controller => 'user_sessions' , :action => 'destroy'
  
  map.resources :types        , :as => 'types-de-tournois-de-lutte'	
  map.resource  :user_session , :as => 'gestion-amateurs-de-lutte'	
  map.resources :users        , :as => 'amateurs-de-lutte-senegalaise'	
  map.resources :arbitres     , :as => 'arbitres-de-lutte-senegalaise'
  map.resources :arenes       , :as => 'arenes-de-lutte-au-senegal'
  map.resources :promoteurs   , :as => 'promoteurs-de-lutte-senegalaise'
  map.resources :combat_types , :as => 'types-de-combats-de-lutte'
  map.resources :categorie_lutteurs , :as => 'categories-de-lutteurs'

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#    Deeply Mapping Sunulamb Routes
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Some Application Controllers Are Scoped To A season  
  map.resources :seasons do |season|
  # Scoping Tournois to a defined Season  	
  	season.resources :tournois , :shallow => false do |tournoi|
  	# Scoping Groups under Tournois: Logic? 
  		tournoi.resources :groupes
  	end
  end
  
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#     Mapping Sunulamb Ecuries & Lutteurs 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
  map.resources :ecuries , :as => 'ecuries-de-lutte-senegalaise' do |ecurie|
  	ecurie.resources :lutteurs
  end
  
  
  
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#    The Root Route Of This Application
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  map.root :controller => 'arenes'

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  Mapping Default Routes
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  
end
