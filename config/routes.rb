Rails.application.routes.draw do
  
  get 'document/privacypolicy' => 'document#privacypolicy'
  get 'document/termsofservice' => 'document#termsofservice'
  devise_for :users, :controllers => { registrations: 'registrations' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'affirmations' => 'affirmations#index'
  get 'home' => 'home#index'
  get 'welcome/index' => 'welcome#index'
  get 'welcome/page2' => 'welcome#page2'
  get 'welcome/page3' => 'welcome#page3'
  get 'welcome/page4' => 'welcome#page4'
  get 'welcome/result' => 'welcome#result'
  get 'view-affirmations/:category/:sub' => 'view_affirmations#index'
  get 'favorites' => 'favorites#index'
  get 'about' => 'about#index'
  
  get 'blogs' => 'blog#index'
  get 'view-blog/:id' => 'blog#viewblog'
  
  root to: "home#index"
  
  resources :view_affirmations
  resources :favorites
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
