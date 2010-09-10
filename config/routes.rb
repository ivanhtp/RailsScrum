ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'sessions', :action => 'new' 
	
#restful_authentication	
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users
  map.resource :session
  
#minhas rotas  
  map.resources :sprint_diarios
  map.resources :sprints
  map.resources :categorias
  map.resources :estorias
  map.resources :tarefas
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
