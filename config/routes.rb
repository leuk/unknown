ActionController::Routing::Routes.draw do |map|
	
  map.resources :arbitres , :as => 'arbitres-de-lutte-senegalaise'
  map.resources :arenes , :as => 'arenes-de-lutte-senegalaise'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
