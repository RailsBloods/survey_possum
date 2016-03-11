Rails.application.routes.draw do

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  get 'yes_no_questions/show'

  get 'yes_no_questions/new'

  get 'yes_no_questions/create'

  get 'yes_no_questions/update'

  get 'yes_no_questions/edit'

  get 'yes_no_questions/destroy'

  get 'long_questions/show'

  get 'long_questions/new'

  get 'long_questions/create'

  get 'long_questions/update'

  get 'long_questions/edit'

  get 'long_questions/destroy'

  get 'short_questions/show'

  get 'short_questions/new'

  get 'short_questions/create'

  get 'short_questions/update'

  get 'short_questions/edit'

  get 'short_questions/destroy'

  get 'yes_no_question/show'

  get 'yes_no_question/new'

  get 'yes_no_question/create'

  get 'yes_no_question/update'

  get 'yes_no_question/edit'

  get 'yes_no_question/destroy'

  resources :surveys
  resources :users
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
