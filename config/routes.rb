Pastis::Application.routes.draw do
  resources :snippets
  
  #match "/create"   => 'snippet#create'
  match "/home"     => 'pages#home'
  match "/contact"  => 'pages#contact'
  match "/about"    => 'pages#about'
  match "/lookup"   => 'lookup#find'
  
  root :to          => 'Pages#home'
end
