Rails.application.routes.draw do
  resources :users
  get '/signup', :as=>"signup", :to=> "users#signup"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  get '/admin' => 'admin#admin'
  resources :about_photos
  resources :schools
  get 'about/about_us'
  get 'about_site', :as=>"about_site", :to=> "about#about_site"

  resources :about_contents
  get 'history(/:game)', :as=>"history", :to=> "history#history"
  get 'our_awards', :as=>"our_awards", :to=> "history#awards"
  
  get 'involved', :as=>"involved", :to=>"involves#involved"
  get 'outreach', :as=>"outreach", :to=>"about#outreach"
  get 'about_us', :as=>"about_us", :to=>"about#about_us"

  get 'calendar', :as=>"calendar", :to => 'meetings#calendar'
  get "handbook", :as=>"team_handbook", :to => 'handbooks#handbook'
  get "news", :as=>"news", :to=> 'posts#news'
  get "labs", :as=>"labs", :to=> 'documents#labs'

  resources :social_media_links
  resources :post_contents
  resources :content_types
  resources :categories_posts
  resources :posts
  resources :robots
  resources :document_links
  resources :documents_people
  resources :documents
  resources :categories
  resources :sponsor_years
  resources :sponsors do
    collection do
      get 'all'
    end
  end
  resources :sponsor_levels
  resources :awards_competitions
  resources :awards
  resources :competitions
  resources :game_videos
  resources :games
  resources :people
  resources :years
  resources :roles
  resources :handbooks
  resources :forms
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
end
