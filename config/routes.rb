Paymeback::Application.routes.draw do

  # Specify a custom home page
  get "/" => "expenses#index"

    # Resource: Expenses

  # --- Create
  get "/expenses/new" => 'expenses#new'
  post "/expenses" => 'expenses#create'

  # --- Read
  get "/expenses" => 'expenses#index'
  get "/expenses/:id" => 'expenses#show'

  # -- Update
  get "/expenses/:id/edit" => 'expenses#edit'
  patch "/expenses/:id" => 'expenses#update'

  # --- Delete
  delete "/expenses/:id" => 'expenses#destroy'

    # Resource: Borrowers

  # --- Create
  get "/borrowers/new" => 'borrowers#new'
  post "/borrowers" => 'borrowers#create'

  # --- Read
  get "/borrowers" => 'borrowers#index'
  get "/borrowers/:id" => 'borrowers#show'

  # -- Update
  get "/borrowers/:id/edit" => 'borrowers#edit'
  patch "/borrowers/:id" => 'borrowers#update'

  # --- Delete
  delete "/borrowers/:id" => 'borrowers#destroy'

    # Resource: Persons

  # --- Create
  get "/persons/new" => 'persons#new'
  post "/persons" => 'persons#create'

  # --- Read
  get "/persons" => 'persons#index'
  get "/persons/:id" => 'persons#show'

  # -- Update
  get "/persons/:id/edit" => 'persons#edit'
  patch "/persons/:id" => 'persons#update'

  # --- Delete
  delete "/persons/:id" => 'persons#destroy'
end










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

