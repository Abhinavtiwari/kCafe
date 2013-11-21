KCafe::Application.routes.draw do
  # Routes for the Item resource:
  # CREATE
  get '/items/new', controller: 'items', action: 'new', :as => 'new_item'
  post '/items', controller: 'items', action: 'create'

  # READ
  get '/items', controller: 'items', action: 'index'
  get '/items/:id', controller: 'items', action: 'show', :as => 'item'

  # UPDATE
  get '/items/:id/edit', controller: 'items', action: 'edit', :as => 'edit_item'
  patch '/items/:id', controller: 'items', action: 'update'

  # DELETE
  delete '/items/:id', controller: 'items', action: 'destroy'
  #------------------------------

  # Routes for the Ordersummary resource:
  # CREATE
  get '/ordersummaries/new', controller: 'ordersummaries', action: 'new', :as => 'new_ordersummary'
  post '/ordersummaries', controller: 'ordersummaries', action: 'create'

  # READ
  get '/ordersummaries', controller: 'ordersummaries', action: 'index'
  get '/ordersummaries/:id', controller: 'ordersummaries', action: 'show', :as => 'ordersummary'

  # UPDATE
  get '/ordersummaries/:id/edit', controller: 'ordersummaries', action: 'edit', :as => 'edit_ordersummary'
  patch '/ordersummaries/:id', controller: 'ordersummaries', action: 'update'

  # DELETE
  delete '/ordersummaries/:id', controller: 'ordersummaries', action: 'destroy'
  #------------------------------

  # Routes for the Order resource:
  # CREATE
  get '/orders/new', controller: 'orders', action: 'new', :as => 'new_order'
  post '/orders', controller: 'orders', action: 'create'

  # READ
  get '/orders', controller: 'orders', action: 'index'
  get '/orders/:id', controller: 'orders', action: 'show', :as => 'order'

  # UPDATE
  get '/orders/:id/edit', controller: 'orders', action: 'edit', :as => 'edit_order'
  patch '/orders/:id', controller: 'orders', action: 'update'

  # DELETE
  delete '/orders/:id', controller: 'orders', action: 'destroy'
  #------------------------------

  # Routes for the Student resource:
  # CREATE
  get '/students/new', controller: 'students', action: 'new', :as => 'new_student'
  post '/students', controller: 'students', action: 'create'

  # READ
  get '/students', controller: 'students', action: 'index'
  get '/students/:id', controller: 'students', action: 'show', :as => 'student'

  # UPDATE
  get '/students/:id/edit', controller: 'students', action: 'edit', :as => 'edit_student'
  patch '/students/:id', controller: 'students', action: 'update'

  # DELETE
  delete '/students/:id', controller: 'students', action: 'destroy'
  #------------------------------

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
