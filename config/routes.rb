ActionController::Routing::Routes.draw do |map|
  map.resources :entries

  map.root :controller => 'blog', :action => 'index'

  map.blog 'blog/:id', :controller => 'blog', :action => 'show'
  
  map.add_comment 'blog/:id/add_comment', :controller => 'blog', :action => 'add_comment'
end
