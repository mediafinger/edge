class AuthenticationsController < ApplicationController
 skip_before_filter :authenticate_user!, :only => [ :create ]

  def index
    @authentications = current_user.authentications if current_user
  end

  def create
    auth = request.env["omniauth.auth"]
    authentication = find_existing auth

    update_dropbox_data(authentication, auth)  if authentication && auth['provider'] == 'dropbox'

    if authentication && current_user.nil?                              # auth known, user not logged in
      flash[:notice] = t("devise.omniauth_callbacks.success", :kind => auth['provider'])
      sign_in_and_redirect(:user, authentication.user)
    
    elsif authentication.nil? && current_user                           # auth not known, user logged in
      current_user.apply_omniauth(auth)
      current_user.save
      redirect_to authentications_path, :notice => t('.authentication_successful')
    
    elsif authentication.nil? && current_user.nil?                     # auth not known, user not logged in
      user = User.new
      user.apply_omniauth(auth)
    
      if user.save                                                                # create new user with auth
        flash[:notice] = t('.sign_in_successful')
        sign_in_and_redirect(:user, user)
      else                                                                        # do not create user without email
        flash[:notice] = t('.email_needed', :provider => auth['provider'])
        session[:omniauth] = auth.except('extra')
        redirect_to new_user_registration_url
      end

    else                                                              # auth known, different user logged in
      redirect_to authentications_path, :alert => t('.authentication_bound_to_other_user')
    end
  end

  def destroy
    @authentication = current_user.authentications.find(params[:id])
    @authentication.destroy
    redirect_to authentications_url, :notice => t('.destroy_authentication_success')
  end
  

private

    def find_existing(auth)
      auth['uid'] = auth['code'] if auth['provider'] == 'github'              # github, or oauth 2.0 issue ??      
      Authentication.find_by_provider_and_uid(auth['provider'], auth['uid'])
    end

    def update_dropbox_data(authentication, auth)
      authentication.update_attibute(:secret, auth['credentials']['secret'])
      authentication.update_attibute(:token,  auth['credentials']['token'])
    end


    # to stop devise from destroying all sessions, when trying to add OpenId and this appears:
    # WARNING: Can't verify CSRF token authenticity
    def handle_unverified_request
      true
    end

end

