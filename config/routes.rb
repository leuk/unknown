ActionController::Routing::Routes.draw do |map|

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
	
  map.resource :user_session, :as => 'gestion-amateurs-de-lutte'	
  map.resources :users, :as => 'amateurs-de-lutte-senegalaise'	
  map.resources :arbitres , :as => 'arbitres-de-lutte-senegalaise'
  map.resources :arenes , :as => 'arenes-de-lutte-au-senegal'
  map.root :controller => 'arenes'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
