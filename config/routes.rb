ActionController::Routing::Routes.draw do |map|
  map.resources :entries

  map.root :controller => 'blog', :action => 'index'

  map.blog 'blog/:id', :controller => 'blog', :action => 'show'
end
