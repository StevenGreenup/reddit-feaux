Rails.application.routes.draw do
  # get 'comments/show'=> '', as: :
  #
  get 'comments/new'=> 'comments#new', as: :new_comment
  #
  post 'comments'=> 'comments#create'
  #
  # get 'comments/edit'=> '', as: :
  #
  # get 'comments/update'=> '', as: :

  root 'posts#index'

  get 'posts' => 'posts#index', as: :posts

  get 'posts/new'=> 'posts#new', as: :new_post

  get 'posts/:id'=> 'posts#show', as: :post

  post 'posts'=> 'posts#create'

  # get 'posts/edit'=> 'posts#edit', as: :
  #
  # get 'posts/update'=> 'posts#update', as: :


  # root 'artists#index'

# get 'artists' => 'artists#index', as: :artists
# get 'artists/new' => 'artists#new', as: :new_artist
# get 'artists/:id' => 'artists#show', as: :artist
# post 'artists' => 'artists#create'
#
# get 'albums' => 'albums#index', as: :albums
# get 'albums/new' => 'albums#new', as: :new_album
# get 'albums/:id' => 'albums#show', as: :album
# post 'albums' => 'albums#create'
# post 'albums/:id/play' => 'albums#play', as: :play_album

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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