Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users,
    path: '', 
    path_names: {
      sign_up: 'registration', 
      sign_in: 'login', 
      sign_out: 'logout',
      edit: 'settings'
    }
    
  get 'newyear', controller: 'newyear', action: 'index'
  
  resources :catalogs
  resources :orders
  resources :search
  resources :pages
  resources :prices

  
  get 'stand', controller: 'stand', action: 'index'
    resources :standlagers, path: 'stand/lager'
    resources :standdous, path: 'stand/dou'
    resources :standpreds, path: 'stand/pred'
    resources :standprofs, path: 'stand/prof'
    resources :standsafeties, path: 'stand/safety'
    resources :standschools, path: 'stand/school'
    resources :standthematics, path: 'stand/thematic'
    resources :standstickers, path: 'stand/stickers'
    resources :standadditionals, path: 'stand/additional'
    resources :standchils, path: 'stand/children'
  
  resources :souvenirs, path: 'souvenirs'
  resources :awards
  resources :expos, path: 'expo'
  resources :polygraphies, path: 'polygraphy'

  get 'print', controller: 'print', action: 'index'
    resources :printplacards, path: 'print/placards'
    resources :printposters, path: 'print/posters'
    
    
  get 'dopballoon', controller: 'dopballoon', action: 'index'
  get 'dopequipment', controller: 'dopequipment', action: 'index'
  get 'dopsport', controller: 'dopsport', action: 'index'  
  resources :lights
  
  get 'signup', controller: 'users', action: 'new'
  get 'logout', controller: 'user_sessions', action: 'destroy'
  get 'login', controller: 'user_sessions', action: 'new'
  resources :user_sessions
  resources :users

  get 'contacts', controller: 'contacts', action: 'index'
  get 'proezd', controller: 'proezd', action: 'index'
  
  root to: 'main#index'
end
