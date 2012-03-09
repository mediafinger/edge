Edge::Application.routes.draw do

  match '/auth/:provider/callback', :to => 'authentications#create'
  match 'auth/failure',             :to => 'authentications#index'

  devise_for :users, :controllers => { :registrations => 'registrations' }
  resources :authentications,   :only => [:index, :create, :destroy]
  resources :profiles,          :only => [:index, :show, :edit, :update]
  resources :profile_ratings

  root :to => 'pages#index'


  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

end


#== Route Map
# Generated on 03 Mar 2012 17:54

#                                 /auth/:provider/callback(.:format)  authentications#create
#             auth_failure        /auth/failure(.:format)             authentications#index
#         new_user_session GET    /users/sign_in(.:format)            devise/sessions#new
#             user_session POST   /users/sign_in(.:format)            devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)           devise/sessions#destroy
#            user_password POST   /users/password(.:format)           devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)       devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)      devise/passwords#edit
#                          PUT    /users/password(.:format)           devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)             registrations#cancel
#        user_registration POST   /users(.:format)                    registrations#create
#    new_user_registration GET    /users/sign_up(.:format)            registrations#new
#   edit_user_registration GET    /users/edit(.:format)               registrations#edit
#                          PUT    /users(.:format)                    registrations#update
#                          DELETE /users(.:format)                    registrations#destroy
#          authentications GET    /authentications(.:format)          authentications#index
#                          POST   /authentications(.:format)          authentications#create
#       new_authentication GET    /authentications/new(.:format)      authentications#new
#      edit_authentication GET    /authentications/:id/edit(.:format) authentications#edit
#           authentication GET    /authentications/:id(.:format)      authentications#show
#                          PUT    /authentications/:id(.:format)      authentications#update
#                          DELETE /authentications/:id(.:format)      authentications#destroy
#                     root        /                                   pages#index

