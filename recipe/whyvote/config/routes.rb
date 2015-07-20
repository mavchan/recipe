Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/teams/view-teams', :to => 'teams#view_teams'

  get '/teams/survey-page', :to => 'teams#survey_page'

  get '/pages/more_info', :to => 'pages#edit_more_info'
  get '/pages/quiz', :to => 'pages#policy_quiz'
  get '/pages/friends', :to => 'pages#friends_match'
  get '/pages/profile-match', :to => 'pages#profile_match'
  get '/pages/profile-share', :to => 'pages#profile_share'
  get '/pages/population', :to => 'pages#population_compare'
  get '/members/all-members', :to => 'members#all_whyvote_members'
  get '/members/dashboard', :to => 'members#dashboard'
  get '/members/friend_profile', :to => 'members#friend_profile'
  get '/members/no_info_dashboard', :to => 'members#no_info_dashboard'
  get '/members/profile', :to => 'members#profile'
  get '/members/stranger_profile', :to => 'members#stranger_profile'
  get '/pages/about_team', :to => 'pages#about_team'
  get '/pages/about_twhyvote', :to => 'pages#about_whyvote'

  resources :members
  resources :teams
  get "/pages/:page" => "pages#show"
  devise_for :users

  get '/users/:id', to: 'users#show', :as => :user
  get '/users/', to: 'users#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end


  get '/pages/home-page-logged-in', :to => 'pages#home_logged_in'
  get '/pages/survey-page', :to => 'pages#survey_page'
  get '/pages/survey-results', :to => 'pages#survey_results'
  get '/pages/view-users', :to => 'pages#view_users'
  get '/pages/friend-dashboard', :to => 'pages#friend_dashboard'
  get '/pages/stranger-dashboard', :to => 'pages#stranger_dashboard'


end
