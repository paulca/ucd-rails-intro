ActionController::Routing::Routes.draw do |map|
  map.devise_for :users

  map.root :controller => :meetings, :action => :index
  
  map.resources :meetings
end
