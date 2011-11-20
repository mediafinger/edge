Edge::Application.routes.draw do

  devise_for :users

# Could not find devise mapping for path
#   "/auth/twitter/callback?oauth_token=mj0IoYngz6w1rxZSEGLY6wXGE5L8Eb3CyYvRgSbVY&oauth_verifier=pOX32MvHEhLUqSm6quVAZMakhz5O2nUKmiMzfDlTj1I".
# Maybe you forgot to wrap your route inside the scope block?
# For example: devise_scope :user do match "/some/route" => "some_devise_controller" end
  match '/auth/:provider/callback', :to => 'devise/sessions#create'

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


# 'missing route'??
# new_user_session    GET       /users/sign_in      { :controller => "devise/sessions", :action => "new" }


#== Route Map
# Generated on 20 Nov 2011 13:36
#
#             user_session POST   /users/sign_in(.:format)       {:action=>"create", :controller=>"devise/sessions"}
#     destroy_user_session DELETE /users/sign_out(.:format)      {:action=>"destroy", :controller=>"devise/sessions"}
#            user_password POST   /users/password(.:format)      {:action=>"create", :controller=>"devise/passwords"}
#        new_user_password GET    /users/password/new(.:format)  {:action=>"new", :controller=>"devise/passwords"}
#       edit_user_password GET    /users/password/edit(.:format) {:action=>"edit", :controller=>"devise/passwords"}
#                          PUT    /users/password(.:format)      {:action=>"update", :controller=>"devise/passwords"}
# cancel_user_registration GET    /users/cancel(.:format)        {:action=>"cancel", :controller=>"devise/registrations"}
#        user_registration POST   /users(.:format)               {:action=>"create", :controller=>"devise/registrations"}
#    new_user_registration GET    /users/sign_up(.:format)       {:action=>"new", :controller=>"devise/registrations"}
#   edit_user_registration GET    /users/edit(.:format)          {:action=>"edit", :controller=>"devise/registrations"}
#                          PUT    /users(.:format)               {:action=>"update", :controller=>"devise/registrations"}
#                          DELETE /users(.:format)               {:action=>"destroy", :controller=>"devise/registrations"}
#                     root        /                              {:controller=>"pages", :action=>"index"}

