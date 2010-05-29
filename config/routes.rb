ActionController::Routing::Routes.draw do |map|


  map.root :controller => "estorias"
  map.resources :categorias
  map.resources :estorias
  map.resources :tarefas
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
