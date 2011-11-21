Edge::Application.routes.draw do

  match '/auth/:provider/callback', :to => 'authentications#create'
  match 'auth/failure',             :to => 'authentications#index'

  devise_for :users, :controllers => { :registrations => 'registrations' }

  resources :authentications

  root :to => 'pages#index'

# Could not find devise mapping for path
#   "/auth/twitter/callback?oauth_token=mj0IoYngz6w1rxZSEGLY6wXGE5L8Eb3CyYvRgSbVY&oauth_verifier=pOX32MvHEhLUqSm6quVAZMakhz5O2nUKmiMzfDlTj1I".
# Maybe you forgot to wrap your route inside the scope block?
# For example: devise_scope :user do match "/some/route" => "some_devise_controller" end


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
# Generated on 21 Nov 2011 02:09
#
#             auth_failure        /auth/failure(.:format)             {:controller=>"authentications", :action=>"index"}
#         new_user_session GET    /users/sign_in(.:format)            {:action=>"new", :controller=>"devise/sessions"}
#             user_session POST   /users/sign_in(.:format)            {:action=>"create", :controller=>"devise/sessions"}
#     destroy_user_session DELETE /users/sign_out(.:format)           {:action=>"destroy", :controller=>"devise/sessions"}
#            user_password POST   /users/password(.:format)           {:action=>"create", :controller=>"devise/passwords"}
#        new_user_password GET    /users/password/new(.:format)       {:action=>"new", :controller=>"devise/passwords"}
#       edit_user_password GET    /users/password/edit(.:format)      {:action=>"edit", :controller=>"devise/passwords"}
#                          PUT    /users/password(.:format)           {:action=>"update", :controller=>"devise/passwords"}
# cancel_user_registration GET    /users/cancel(.:format)             {:action=>"cancel", :controller=>"registrations"}
#        user_registration POST   /users(.:format)                    {:action=>"create", :controller=>"registrations"}
#    new_user_registration GET    /users/sign_up(.:format)            {:action=>"new", :controller=>"registrations"}
#   edit_user_registration GET    /users/edit(.:format)               {:action=>"edit", :controller=>"registrations"}
#                          PUT    /users(.:format)                    {:action=>"update", :controller=>"registrations"}
#                          DELETE /users(.:format)                    {:action=>"destroy", :controller=>"registrations"}
#          authentications GET    /authentications(.:format)          {:action=>"index", :controller=>"authentications"}
#                          POST   /authentications(.:format)          {:action=>"create", :controller=>"authentications"}
#       new_authentication GET    /authentications/new(.:format)      {:action=>"new", :controller=>"authentications"}
#      edit_authentication GET    /authentications/:id/edit(.:format) {:action=>"edit", :controller=>"authentications"}
#           authentication GET    /authentications/:id(.:format)      {:action=>"show", :controller=>"authentications"}
#                          PUT    /authentications/:id(.:format)      {:action=>"update", :controller=>"authentications"}
#                          DELETE /authentications/:id(.:format)      {:action=>"destroy", :controller=>"authentications"}
#                     root        /                                   {:controller=>"pages", :action=>"index"}
