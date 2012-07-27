Athostest::Application.routes.draw do

  resources :benutzers

  root :to => 'benutzers#index'
end

