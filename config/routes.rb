TeamBlog::Engine.routes.draw do
  namespace :admin do
    resources :categories, :except => [:show]
    resources :links, :except => [:show]
    resources :articles, :except => [:show]
    resources :pages, :except => [:show]
    resource :member, :only => [:show, :create, :update]

    root :to => 'home#index'
  end

  resources :categories, :only => [:show] do
    get 'page/:page', :action => :index, :on => :member
  end
  resources :articles, :only => [:index, :show] do
    get 'page/:page', :action => :index, :on => :collection
  end
  resources :pages, :only => [:show]

  root :to => 'articles#index'
end
