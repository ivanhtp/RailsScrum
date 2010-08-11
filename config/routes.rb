ActionController::Routing::Routes.draw do |map|
  map.resources :sprint_diarios

  map.resources :sprints



  map.root :controller => "estorias"
  map.resources :categorias
  map.resources :estorias
  map.resources :tarefas
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
